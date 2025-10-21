
using { /Fortnite.com/UI }
using { /Fortnite.com/Devices }
using { /Verse.org/Assets }
using { /Verse.org/Random }
using { /Verse.org/Colors }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/UI }
using { /UnrealEngine.com/Temporary/SpatialMath }
using { /UnrealEngine.com/Temporary/Diagnostics }


ModuleDailyReward<public> := module:

    reward_type := enum:
        Money,
        Money2,
        Joker

    persistable_agent_data<public> := class<final><persistable>:
        LastLoginSeconds : int = 0
        LastClaimedGiftSeconds : int = 0
        LastClaimedGiftIndex : int = -1

    agent_data := class:
        var LastLoginSeconds : int = 0
        var LastClaimedGiftSeconds : int = 0
        var LastClaimedGiftIndex : int = -1
        var bGiftBoxOpened : logic = false
        var MaybeCanvas : ?canvas = false
        
    date_data := class:
        Year : type {_X:int where 0 <= _X} = 0
        Month : type {_X:int where 1 <= _X, _X <= 12} = 1
        Day : type {_X:int where 1 <= _X, _X <= 31} = 1

        Hours : type {_X:int where 0 <= _X, _X <= 23} = 0
        Minutes : type {_X:int where 0 <= _X, _X <= 59} = 0
        Seconds : type {_X:int where 0 <= _X, _X <= 59} = 0

    reward_data := class<concrete>:
        @editable
        ItemGranter : item_granter_device = item_granter_device{}

        @editable
        ItemAmountOrItemIndexToReward : int = -1

        # @editable
        # bGrantRandom : logic = false

        @editable
        RewardType : reward_type = reward_type.Money

    giftbox_data := class<concrete>:
        @editable
        InteractionButton : button_device = button_device{}

        @editable
        RewardDataDay1 : reward_data = reward_data{}
        @editable
        RewardDataDay2 : reward_data = reward_data{}
        @editable
        RewardDataDay3 : reward_data = reward_data{}
        @editable
        RewardDataDay4 : reward_data = reward_data{}
        @editable
        RewardDataDay5 : reward_data = reward_data{}
        @editable
        RewardDataDay6 : reward_data = reward_data{}
        @editable
        RewardDataDay7 : reward_data = reward_data{}

        var RewardsData : []reward_data = array{}

        Init<public>():void=
            set RewardsData = array
            {
                RewardDataDay1, RewardDataDay2, RewardDataDay3,
                RewardDataDay4, RewardDataDay5, RewardDataDay6,
                RewardDataDay7
            }

    var PersistentAgentMap<public> : weak_map(player, persistable_agent_data) = map{}

    daily_reward_device := class(creative_device):

        @editable
        bUseTestData : logic = false

        @editable
        TestDataSecondsForADay : int = 0

        @editable
        TimePropToMove : creative_prop = creative_prop{}

        @editable
        PlayerSpawners : []player_spawner_device = array{}

        @editable
        GiftBoxData : giftbox_data = giftbox_data{}

        DaysPerMonth : []int = array
        {
            30, # January
            28, # February
            31, # March
            30, # April
            31, # May
            30, # June
            31, # July
            31, # August
            30, # September
            31, # October
            30, # November
            31 # December
        }

        TextForUI<localizes>(InText : string) : message = "{InText}"

        var AgentMap : [agent]agent_data = map{}
        var RewardTextures : []texture = array{}

        var TestDataMultiplier : int = 0
        var RealDataMultiplier : int = 1

        OnBegin<override>()<suspends>:void=
            Print("OnBegin")

            if (bUseTestData = true):
                set TestDataMultiplier = 1
                set RealDataMultiplier = 0

            GiftBoxData.InteractionButton.InteractedWithEvent.Subscribe(OnGiftBoxInteracted)
            GiftBoxData.Init()
            for (RewardData : GiftBoxData.RewardsData):
                case(RewardData.RewardType):
                    reward_type.Money =>
                        set RewardTextures += array{ DRTextures.RewardMoney }
                    reward_type.Money2 =>
                        set RewardTextures += array{ DRTextures.RewardMoney2s }
                    reward_type.Joker =>
                        set RewardTextures += array{ DRTextures.RewardJoker }

            for (Player : GetPlayspace().GetPlayers()):
                OnPlayerSpawned(Player)

            for (PlayerSpawner : PlayerSpawners):
                PlayerSpawner.SpawnedEvent.Subscribe(OnPlayerSpawned)

            GetPlayspace().PlayerRemovedEvent().Subscribe(OnPlayerLeft)

            spawn{ AsyncPerSecondTick() }

        AgentDataPersistentToTmp(PersistableAgentData : persistable_agent_data)<transacts>:agent_data=
            return agent_data
            {
                LastLoginSeconds := PersistableAgentData.LastLoginSeconds
                LastClaimedGiftSeconds := PersistableAgentData.LastClaimedGiftSeconds
                LastClaimedGiftIndex := PersistableAgentData.LastClaimedGiftIndex
            }

        AgentDataTmpToPersistent(AgentData : agent_data)<transacts>:persistable_agent_data=
            return persistable_agent_data
            {
                LastLoginSeconds := AgentData.LastLoginSeconds
                LastClaimedGiftSeconds := AgentData.LastClaimedGiftSeconds
                LastClaimedGiftIndex := AgentData.LastClaimedGiftIndex
            }

        SaveData(Player : player, AgentData : agent_data):void=
            if (set PersistentAgentMap[Player] = AgentDataTmpToPersistent(AgentData)){}

        OnPlayerLeft(Player : player):void=
            if (AgentData := AgentMap[Player]):
                SaveData(Player, AgentData)

        OnPlayerSpawned(Agent : agent):void=
            if (not AgentMap[Agent]):
                var bLoadDataSuccess : logic = false
                if (Player := player[Agent]):
                    if (PersistableAgentData := PersistentAgentMap[Player]):
                        if (set AgentMap[Agent] = AgentDataPersistentToTmp(PersistableAgentData),
                        AgentData := AgentMap[Agent]):
                            set bLoadDataSuccess = true

                            CurrentSeconds := GetCurrentDateAsSeconds()
                            var LastClaimedIndex : int = -1

                            LastLoginPassedSeconds := CurrentSeconds - AgentData.LastLoginSeconds
                            SecondsInTwoDays := DaysToSeconds(2)

                            set bLoadDataSuccess = logic{ LastLoginPassedSeconds < SecondsInTwoDays }

                if (bLoadDataSuccess = false):
                    AgentData := agent_data{}

                    CurrentSeconds := GetCurrentDateAsSeconds()
                    set AgentData.LastLoginSeconds = CurrentSeconds

                    if (set AgentMap[Agent] = AgentData){}

        OnGiftBoxInteracted(Agent : agent):void=
            if (AgentData := AgentMap[Agent], Player := player[Agent], PlayerUI := GetPlayerUI[Player]):

                CurrentSeconds := GetCurrentDateAsSeconds()
                Canvas := CreateCanvas(AgentData.LastClaimedGiftIndex, AgentData.LastClaimedGiftSeconds, GiftBoxData.RewardsData, CurrentSeconds)
                set AgentData.bGiftBoxOpened = true
                set AgentData.MaybeCanvas = option{ Canvas }

                PlayerUI.AddWidget(Canvas, player_ui_slot{ InputMode := ui_input_mode.All })

        OnGiftButtonClicked(WidgetMessage : widget_message):void=
            if (AgentData := AgentMap[WidgetMessage.Player],
            Canvas := AgentData.MaybeCanvas?,
            RewardData := GiftBoxData.RewardsData[AgentData.LastClaimedGiftIndex+1]):
                CurrentTimeSeconds := GetCurrentDateAsSeconds()
                RewardDurationSeconds := DaysToSeconds(1)
                RemainingSeconds := (AgentData.LastClaimedGiftSeconds + RewardDurationSeconds) - CurrentTimeSeconds

                if (RemainingSeconds <= 0):

                    if:
                        CustomPlayer := GetGMInstance().CustomPlayers[WidgetMessage.Player]
                    then:
                        CustomPlayer.DRRewardPlayer(RewardData.ItemAmountOrItemIndexToReward)

                    # RewardData.ItemGranter.GrantItemIndex(WidgetMessage.Player,
                    # RewardData.ItemAmountOrItemIndexToReward)

                    set AgentData.LastClaimedGiftIndex += 1
                    set AgentData.LastClaimedGiftSeconds = CurrentTimeSeconds

                    UpdateGiftAsClaimed(Canvas, AgentData.LastClaimedGiftIndex)

                    if (AgentData.LastClaimedGiftIndex = GiftBoxData.RewardsData.Length-1):
                        set AgentData.LastClaimedGiftIndex = -1

                    SaveData(WidgetMessage.Player, AgentData)

        OnGiftBoxClosed(WidgetMessage : widget_message):void=
            if (AgentData := AgentMap[WidgetMessage.Player], Canvas := AgentData.MaybeCanvas?,
            PlayerUI := GetPlayerUI[WidgetMessage.Player]):
                set AgentData.bGiftBoxOpened = false
                set AgentData.MaybeCanvas = false
                PlayerUI.RemoveWidget(Canvas)

        DaysToSeconds(Days : int):int=
            return ((Days * 24 * 60 * 60 * RealDataMultiplier) + (Days * TestDataSecondsForADay * TestDataMultiplier))

        GetCurrentDateAsSeconds():int=
            Transform := TimePropToMove.GetTransform()
            Translation := Transform.Translation
            Scale := Transform.Scale

            if (Year := Int[Translation.X], Month := Int[Translation.Y], Day := Int[Translation.Z],
            Hours := Int[Scale.X], Minutes := Int[Scale.Y], Seconds := Int[Scale.Z],
            CastedYear := type{_X:int where 0 <= _X}[Year],
            CastedMonth := type{_X:int where 1 <= _X, _X <= 12}[Month],
            CastedDay := type{_X:int where 1 <= _X, _X <= 31}[Day],
            CastedHours := type{_X:int where 0 <= _X, _X <= 23}[Hours],
            CastedMinutes := type{_X:int where 0 <= _X, _X <= 59}[Minutes],
            CastedSeconds := type{_X:int where 0 <= _X, _X <= 59}[Seconds]):
                return DateDataToTotalSeconds(date_data{ Year := CastedYear, Month := CastedMonth, Day := CastedDay,
                Hours := CastedHours, Minutes := CastedMinutes, Seconds := CastedSeconds})

            return 0

        DateDataToTotalSeconds(DateData : date_data):int=
            var TotalDays : int = DateData.Day - 1
            if (DateData.Month > 1):
                for (I := 0 .. DateData.Month-2, DayPerMonth := DaysPerMonth[I]):
                    set TotalDays += DayPerMonth

            if (Mod[DateData.Year, 4] = 0, DateData.Month > 2):
                set TotalDays += 1

            PassedYears := DateData.Year-1
            set TotalDays += PassedYears * 365
            if (AllAdditionalDays := Int[PassedYears*1.0 / 4.0]):
                set TotalDays += AllAdditionalDays

            return ((DateData.Seconds) + (DateData.Minutes*60) + (DateData.Hours*60*60) + (TotalDays*60*60*24))

        GetFormattedTimeString(TimeInSecs : int)<transacts>:string=
            var FormattedTimeString : string = ""
            HourTime : float = (TimeInSecs*1.0) / (60.0*60.0)
            if (FlooredHourTime := Floor[HourTime]):
                if (FlooredHourTime > 0):
                    if (FlooredHourTime < 10):
                        set FormattedTimeString += "0"
                    set FormattedTimeString += ToString(FlooredHourTime) + ":"

                RemainedMinutesTime : float = HourTime - (FlooredHourTime * 1.0)

                MinuteTime : float = RemainedMinutesTime * 60.0
                if (FlooredMinuteTime := Floor[MinuteTime]):
                    if (FlooredMinuteTime < 10):
                        set FormattedTimeString += "0" + ToString(FlooredMinuteTime) + ":"
                    else:
                        set FormattedTimeString += ToString(FlooredMinuteTime) + ":"

                    RemainedSecondsTime : float = MinuteTime - (FlooredMinuteTime*1.0)

                    SecondsTime : float = RemainedSecondsTime * 60.0
                    if (FlooredSecondsTime := Floor[SecondsTime]):
                        if (FlooredSecondsTime < 10):
                            set FormattedTimeString += "0" + ToString(FlooredSecondsTime)
                        else:
                            set FormattedTimeString += ToString(FlooredSecondsTime)

            return FormattedTimeString

        GetGiftProgressTexture(LastGiftIndex : int):texture=
            case(LastGiftIndex):
                -1 => DRTextures.Bar1
                0 => DRTextures.Bar2
                1 => DRTextures.Bar3
                2 => DRTextures.Bar4
                3 => DRTextures.Bar5
                4 => DRTextures.Bar6
                5 => DRTextures.Bar7
                6 => DRTextures.Bar8
                _ => DRTextures.Bar1

        GetDayTexture(Day : int, bGreen : logic):texture=
            DayTextures : []texture = array
            { DRTextures.Day1, DRTextures.Day2, DRTextures.Day3, DRTextures.Day4,
            DRTextures.Day5, DRTextures.Day6, DRTextures.Day7 }
            DayTexturesG : []texture = array
            { DRTextures.DayG1, DRTextures.DayG2, DRTextures.DayG3, DRTextures.DayG4,
            DRTextures.DayG5, DRTextures.DayG6, DRTextures.DayG7 }

            if (bGreen = true):
                if (Texture := DayTexturesG[Day-1]):
                    return Texture
            else:
                if (Texture := DayTextures[Day-1]):
                    return Texture

            return DRTextures.Day1

        AsyncPerSecondTick()<suspends>:void=
            loop:
                Sleep(1.0)

                CurrentTimeSeconds := GetCurrentDateAsSeconds()

                Players := GetPlayspace().GetPlayers()

                for (Player : Players, AgentData := AgentMap[Player],
                AgentData.bGiftBoxOpened = true, Canvas := AgentData.MaybeCanvas?):
                    UpdateTimerTextBlock(Canvas, AgentData.LastClaimedGiftSeconds, CurrentTimeSeconds)

        UpdateTimerTextBlock(Canvas : canvas, LastClaimedGiftSeconds : int, CurrentSeconds : int):void=
            TimerTextBlockIndex := 4

            if (TextBlock := text_block[Canvas.Slots[TimerTextBlockIndex].Widget]):
                RewardDurationSeconds := DaysToSeconds(1)
                var RemainingSeconds : int = (LastClaimedGiftSeconds + RewardDurationSeconds) - CurrentSeconds
                if (RemainingSeconds < 0):
                    set RemainingSeconds = 0

                TextBlock.SetText(TextForUI(GetFormattedTimeString(RemainingSeconds)))

        UpdateGiftAsClaimed(Canvas : canvas, Index : int):void=
            BarTexture := GetGiftProgressTexture(Index)
            DayTexture := GetDayTexture(Index+1, true)

            BarTextureIndex := 1
            DayTextureStartIndex := 5
            DayTextureIndex := DayTextureStartIndex + Index

            if (BarTextureBlock := texture_block[Canvas.Slots[BarTextureIndex].Widget],
            DayTextureBlock := texture_block[Canvas.Slots[DayTextureIndex].Widget]):
                BarTextureBlock.SetImage(BarTexture)
                DayTextureBlock.SetImage(DayTexture)

        CreateCanvas(LastClaimedGiftIndex : int, LastClaimedGiftSeconds : int, RewardsData : []reward_data, CurrentSeconds : int):canvas=
            var CanvasSlots : []canvas_slot = array{}

            BGOriginalSize := vector2{ X:= 2044.0, Y:= 1080.0 }
            TextureScaler := 0.5
            BGTargetSize := BGOriginalSize * TextureScaler
            set CanvasSlots += array
            {
                CanasSlot0 := canvas_slot:
                    Anchors := anchors{ Minimum := vector2{ X := 0.5, Y := 0.5 }, Maximum := vector2{ X := 0.5, Y := 0.5 } }
                    Offsets := margin{ Top := 0.0, Left := 0.0, Right := 0.0, Bottom := 0.0 }
                    Alignment := vector2{ X := 0.5, Y := 0.5 }
                    ZOrder := 1
                    SizeToContent := true
                    Widget := texture_block{ DefaultImage := DRTextures.DailyRewards, DefaultDesiredSize := BGTargetSize }
            }

            BarOriginalSize := vector2{ X := 1696.0, Y := 133.0 }
            BarTargetSize := BarOriginalSize * TextureScaler
            BarTexture := GetGiftProgressTexture(LastClaimedGiftIndex)
            set CanvasSlots += array
            {
                CanasSlot1 := canvas_slot:
                    Anchors := anchors{ Minimum := vector2{ X := 0.5, Y := 0.5 }, Maximum := vector2{ X := 0.5, Y := 0.5 } }
                    Offsets := margin{ Top := 96.0, Left := -432.0, Right := 0.0, Bottom := 0.0 }
                    Alignment := vector2{ X := 0.0, Y := 0.5 }
                    ZOrder := 1
                    SizeToContent := true
                    Widget := texture_block{ DefaultImage := BarTexture, DefaultDesiredSize := BarTargetSize }
            }

            set CanvasSlots += array
            {
                CanasSlot2 := canvas_slot:
                    Anchors := anchors{ Minimum := vector2{ X := 0.5, Y := 0.5 }, Maximum := vector2{ X := 0.5, Y := 0.5 } }
                    Offsets := margin{ Top := 192.0, Left := -228.0, Right := 0.0, Bottom := 0.0 }
                    Alignment := vector2{ X := 0.5, Y := 0.5 }
                    ZOrder := 1
                    SizeToContent := true
                    Widget := button_quiet{ DefaultText := TextForUI("            \n            ") }
            }
            if (ButtonQuiet := button_quiet[CanvasSlots[CanvasSlots.Length-1].Widget]):
                ButtonQuiet.OnClick().Subscribe(OnGiftButtonClicked)

            set CanvasSlots += array
            {
                CanasSlot3 := canvas_slot:
                    Anchors := anchors{ Minimum := vector2{ X := 0.5, Y := 0.5 }, Maximum := vector2{ X := 0.5, Y := 0.5 } }
                    Offsets := margin{ Top := 192.0, Left := 228.0, Right := 0.0, Bottom := 0.0 }
                    Alignment := vector2{ X := 0.5, Y := 0.5 }
                    ZOrder := 1
                    SizeToContent := true
                    Widget := button_quiet{ DefaultText := TextForUI("            \n            ") }
            }
            if (ButtonExit := button_quiet[CanvasSlots[CanvasSlots.Length-1].Widget]):
                ButtonExit.OnClick().Subscribe(OnGiftBoxClosed)

            RewardDurationSeconds := DaysToSeconds(1)
            var RemainingSeconds : int = (LastClaimedGiftSeconds + RewardDurationSeconds) - CurrentSeconds
            if (RemainingSeconds < 0):
                set RemainingSeconds = 0
            set CanvasSlots += array
            {
                CanasSlot4 := canvas_slot:
                    Anchors := anchors{ Minimum := vector2{ X := 0.5, Y := 0.5 }, Maximum := vector2{ X := 0.5, Y := 0.5 } }
                    Offsets := margin{ Top := 192.0, Left := 0.0, Right := 0.0, Bottom := 0.0 }
                    Alignment := vector2{ X := 0.5, Y := 0.5 }
                    ZOrder := 1
                    SizeToContent := true
                    Widget := text_block{ DefaultText := TextForUI(GetFormattedTimeString(RemainingSeconds)), DefaultShadowColor := NamedColors.Black,
                    DefaultShadowOpacity := 1.0, DefaultShadowOffset := option{ vector2{ X := 2.0, Y := 2.0 } }, DefaultTextColor := NamedColors.White }
            }

            DayOriginalSize := vector2{ X := 113.0, Y := 38.0 }
            DayTargetSize := DayOriginalSize * TextureScaler
            for (I := 0 .. 6):
                bGreen := logic{ I <= LastClaimedGiftIndex }
                DayTexture := GetDayTexture(I+1, bGreen)

                LeftOffset := 126.0

                set CanvasSlots += array
                {
                    CanvasSlot5 := canvas_slot:
                        Anchors := anchors{ Minimum := vector2{ X := 0.5, Y := 0.5 }, Maximum := vector2{ X := 0.5, Y := 0.5 } }
                        Offsets := margin{ Top := 128.0, Left := -412.0 + LeftOffset*I, Right := 0.0, Bottom := 0.0 }
                        Alignment := vector2{ X := 0.0, Y := 0.5 }
                        ZOrder := 1
                        SizeToContent := true
                        Widget := texture_block{ DefaultImage := DayTexture, DefaultDesiredSize := DayTargetSize }
                }

            FrameOriginalSize := vector2{ X := 168.0, Y := 280.0 }
            FrameTargetSize := FrameOriginalSize * TextureScaler
            for (I := 0 .. 6):
                RewardTexture := if (Text := RewardTextures[I])
                then Text
                else DRTextures.RewardMoney

                LeftOffset := 125.0

                set CanvasSlots += array
                {
                    CanvasSlot6 := canvas_slot:
                        Anchors := anchors{ Minimum := vector2{ X := 0.5, Y := 0.5 }, Maximum := vector2{ X := 0.5, Y := 0.5 } }
                        Offsets := margin{ Top := -48.0, Left := -382.0 + LeftOffset*I, Right := 0.0, Bottom := 0.0 }
                        Alignment := vector2{ X := 0.5, Y := 0.5 }
                        ZOrder := 1
                        SizeToContent := true
                        Widget := texture_block{ DefaultImage := RewardTexture, DefaultDesiredSize := FrameTargetSize }
                }

            Canvas : canvas = canvas:
                Slots := CanvasSlots

            return Canvas