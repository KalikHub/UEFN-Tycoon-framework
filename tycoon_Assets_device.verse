using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }
using { /Fortnite.com/Characters }
using { /Verse.org/Assets }
using { /UnrealEngine.com/Temporary/SpatialMath }
using { /Fortnite.com/Devices/Patchwork }

var tycoon_Assets_singleton : weak_map(session, my_tycoon_Assets_class) = map{}

my_tycoon_Assets_class := class:

    ShowNextXButtons : int = 3

    var TycoonPlayerAgent : ?agent = false

    var TheArray : ?[]PropsAndTrigger = false

    OnLeft(ClassSelect:ClassSelector):void=
        ClassSelect.Tycoon_Startpad.Enable
        if(ClassSelect.Tycoon_Startpad_Prop.TeleportTo[ClassSelect.OriginalTransformClassSelectProp]){}
        for(Obj:ClassSelect.PropsAndTriggers):
            MakeBothHide(Obj)
            set Obj.Bought = false
            set Obj.DropperChecked = false
            set Obj.iteration = 0 
        
    MakeBothHide(PropGroup:PropsAndTrigger)<transacts>:void= #  done
        for(Obj:PropGroup.Props):
            Obj.Hide()
        if(PropGroup.Muatator_zone.TeleportTo[TransformZero]) {}
        if(PropGroup.ButtonProp.TeleportTo[TransformZero]){}
        if(PropGroup.Billboard.TeleportTo[TransformZero]){}

        PropGroup.Devices.MakeAllDevicesHidden(PropGroup)


    MakeBothShow(PropGroup:PropsAndTrigger):void= #   done
        for(Obj:PropGroup.Props):
            Obj.Show()
        if(PropGroup.Muatator_zone.TeleportTo[PropGroup.OrigianlTransformTrigger]) {}
        if(PropGroup.ButtonProp.TeleportTo[PropGroup.ButtonPropOrigianlTransform]){}
        
        
    CheckIfEnoughCoins(coins : int,SecondCoins:int , price : int, Secondprice:int, Agent: agent, PropGroup:PropsAndTrigger, NeededRebirths: int, Rebirths: int)<transacts><decides>:void=  #   done
        Print("Hello")
        if :
            coins >= price
            SecondCoins >= Secondprice
            NeededRebirths >= Rebirths
        then:
            Print("Hello")
            if:
                Player:=player[Agent]
                CustomPlayer := GetGMInstance().CustomPlayers[Player]
                Agent = TycoonPlayerAgent?
            then:
                for(Obj:PropGroup.Props):
                    Obj.Show()
                PropGroup.Devices.ShowAllDevices()
                PropGroup.Muatator_zone.TeleportTo[TransformZero]
                PropGroup.ButtonProp.TeleportTo[TransformZero]
                PropGroup.Billboard.TeleportTo[TransformZero]
                for(Obj:PropGroup.Hide_Props):
                    Obj.Hide()
                ShowNextButtons(PropGroup)
                set PropGroup.Bought = true
                if(PropGroup.iteration = 1):
                    set CustomPlayer.Coins = CustomPlayer.Coins - price
                    set CustomPlayer.SecondCoins = CustomPlayer.SecondCoins - Secondprice
                    Print("hello")
                set PropGroup.iteration = PropGroup.iteration + 1
                if:
                    PropGroup.RebirthDevice = true
                    PropGroup.iteration = 1
                then:
                    set CustomPlayer.Rebirths = CustomPlayer.Rebirths + 1
                    set CustomPlayer.Coins = 0
                    set CustomPlayer.SecondCoins = 0
                    set CustomPlayer.CoinsAsec = 0
                    set CustomPlayer.SecondCoinsAsec = 0
                    PropGroup.SendRibirthSignalTrue()
                    Print("hello2")
                set PropGroup.MaybeFailed = "yes"
            else:
        else:
            set PropGroup.MaybeFailed = "no"
            

    ShowNextButtons(PropsGroup:PropsAndTrigger)<transacts>:void=    #   done
        if(PropsGroupArr := TheArray?):
            for(I := 0..PropsGroupArr.Length-1):
                if:
                    Element := PropsGroupArr[I].OrigianlTransformTrigger
                    Element.Translation.X = PropsGroup.OrigianlTransformTrigger.Translation.X
                    Element.Translation.Y = PropsGroup.OrigianlTransformTrigger.Translation.Y
                    Element.Translation.Z = PropsGroup.OrigianlTransformTrigger.Translation.Z
                then:
                    Print("ShowNextButtons then:")
                    for(J:= I+1..I+ShowNextXButtons):
                        if(InitPropsAndTrigger(PropsGroupArr[J])) {}

    InitPropsAndTrigger(PropGroup:PropsAndTrigger)<transacts>:void=
        if(PropGroup.Bought = false):
            Print("not bought")
            if(PropGroup.Muatator_zone.TeleportTo[PropGroup.OrigianlTransformTrigger]) {}
            if(PropGroup.ButtonProp.TeleportTo[PropGroup.ButtonPropOrigianlTransform]) {}
            if(PropGroup.Billboard.TeleportTo[vector3{X:= PropGroup.ButtonPropOrigianlTransform.Translation.X;Y:= PropGroup.ButtonPropOrigianlTransform.Translation.Y+100.0;Z:= PropGroup.ButtonPropOrigianlTransform.Translation.Z}, rotation{}]) {}
        else:
            Print("Bought!")
                
    OnClaimedClassSelectors(Agent: agent, Obj: ClassSelector):void=  
        Obj.Tycoon_Startpad.Disable()
        if(Obj.Tycoon_Startpad_Prop.TeleportTo[TransformZero]){}


GetTAInstance()<transacts>:my_tycoon_Assets_class=
    Session:=GetSession()
    if(Instance:=tycoon_Assets_singleton[Session]). Instance
    else if(Instance := my_tycoon_Assets_class{}, set tycoon_Assets_singleton[Session] = Instance). Instance
    else. Err()


TransformZero:transform = transform:  #   done
            Translation := vector3{X:=0.0, Y:=0.0, Z:=-1024.0}
            Rotation := IdentityRotation()
            Scale := vector3{X:=1.0, Y:=1.0, Z:=1.0}

PropsAndTrigger  := class<concrete>:  #   done

    var Price_prefix_1 : string = ""
    var Price_prefix_2 : string = ""
    var Price_prefix_3 : string = ""

    var iteration : int = 0
    var Bought: logic = false
    var DropperChecked : logic = false
    var RibirthSignal : logic = false
    var MaybeFailed : string = ""

    @editable   ID : string = ""
    @editable   Name : string = ""
    @editable   Price : int = 0
    @editable   SecondPrice : int = 0
    @editable   NeededRebirths : int = 0
    @editable   Devices : Devicelist = Devicelist{}
    @editable   Props : []creative_prop = array{}
    @editable   Hide_Props : []creative_prop = array{}
    @editable   ButtonProp : creative_prop = creative_prop{}
    @editable   Billboard : billboard_device = billboard_device{}
    @editable   Muatator_zone : mutator_zone_device = mutator_zone_device{}

    SendRibirthSignalTrue()<transacts>:void=
        set RibirthSignal = true

    SendRibirthSignalFalse()<transacts>:void=
        set RibirthSignal = false

    SetOriginalTransformTrigger(TriggurDevice:mutator_zone_device):void=
        trnsfrm := TriggurDevice.GetTransform()
        set OrigianlTransformTrigger = trnsfrm
        Devices.SetOriginalPositionsDevices()
        Print("{OrigianlTransformTrigger.Translation.X},{OrigianlTransformTrigger.Translation.Y},{OrigianlTransformTrigger.Translation.Z}")
    var OrigianlTransformTrigger : transform = TransformZero

    SetButtonPropOrigianlTransform(Button:creative_prop):void=
        trnsfrm := Button.GetTransform()
        set ButtonPropOrigianlTransform = trnsfrm

    var ButtonPropOrigianlTransform : transform = TransformZero

    OnTriggered(Agent: agent):void=    #   done
        Print("OnTriggered")
            if:
                Player:=player[Agent]
                CustomPlayer := GetGMInstance().CustomPlayers[Player]
            then:
                Print("OnTriggered then:")
                if(GetTAInstance().CheckIfEnoughCoins[CustomPlayer.Coins, CustomPlayer.SecondCoins, Price, SecondPrice, Agent, Self, CustomPlayer.Rebirths, NeededRebirths]) {}
                Print("hello")
              
    S2M<localizes>(S:string):message="{S}"

    MakeBillboardFollowAgent(Maybeagent:?agent)<suspends>:void=
        Print("entered loop")
        # set up the propeties of billboard
        Billboard.SetTextSize(17)
        Billboard.SetText(S2M("{Name} \n {Price_prefix_1} {Price} \n {Price_prefix_2} {SecondPrice} \n {Price_prefix_3} {NeededRebirths}"))
        Billboard.UpdateDisplay()

        loop:
            Sleep(0.0)
            if(Agent:agent = Maybeagent?):
                if(PlayerCharacter := Agent.GetFortCharacter[]):

                    FollowBillboardLoc := Billboard.GetTransform().Translation
                    PlayerLoc := PlayerCharacter.GetTransform().Translation

                    if(LookDirection := (PlayerLoc - FollowBillboardLoc).MakeUnitVector[]):
                        
                        Yaw := RadiansToDegrees(ArcTan(LookDirection.Y, LookDirection.X)-80.0)
                        Pitch := 0.0
                        Roll := 0.0

                        NewRotation := MakeRotationFromYawPitchRollDegrees(Yaw,Pitch,Roll)
                        Billboard.MoveTo(FollowBillboardLoc, NewRotation, 0.01)

            else:
                Print("nope")
                break

    @editable   Dropper : logic = false
    @editable   DropAmountASec : int = 0
    @editable   SecondDropAmountASec : int = 0
    @editable   RebirthDevice : logic = false
        

ClassSelector  := class<concrete>: #   done

    @editable   Price_prefix_1 : string = ""
    @editable   Price_prefix_2 : string = ""
    @editable   Price_prefix_3 : string = ""


    @editable   Hud_Device_Success : hud_message_device = hud_message_device{}
    @editable   Hud_Device_Fail : hud_message_device = hud_message_device{}

    FailedToAquire(Agent: agent):void=
        Hud_Device_Fail.SetDisplayTime(0.4)
        Hud_Device_Fail.Show(Agent)

    SuccessToAquire(Agent: agent):void=
        Hud_Device_Success.SetDisplayTime(0.4)
        Hud_Device_Success.Show(Agent)

    SpawnCollectDropperCoinsAsec(Agent : agent):void=
        spawn{CollectDropperCoinsAsec()}

    SpawnDroppingCoinsASec(Agent : agent):void=
        spawn{DroppingCoinsASec(Agent)}
        spawn{SecondDroppingCoinsASec(Agent)}

    DroppingCoinsASec(Agent: agent)<suspends>:void=
        Print("DroppingCoinsASec")
        if:
            Player:=player[Agent]
            CustomPlayer := GetGMInstance().CustomPlayers[Player]
        then:
            loop:
                Sleep(1.0)
                resultfloat : float = DropsCoinsASec * DropsCoinsASecMulti
                if(result : int = Round[resultfloat]):
                    set CustomPlayer.Coins = CustomPlayer.Coins + result

    SecondDroppingCoinsASec(Agent: agent)<suspends>:void=
        Print("SecondDroppingCoinsASec")
        if:
            Player:=player[Agent]
            CustomPlayer := GetGMInstance().CustomPlayers[Player]
        then:
            loop:
                Sleep(1.0)
                resultfloat : float = SecondDropsCoinsASec * SecondDropsCoinsASecMulti
                if(result : int = Round[resultfloat]):
                    set CustomPlayer.SecondCoins = CustomPlayer.SecondCoins + result
        

    CollectDropperCoinsAsec()<suspends>:void=
        Print("CollectDropperCoinsAsec")
        loop:
            Sleep(0.0)
            for(Obj: Self.PropsAndTriggers):
                if:
                    Obj.Dropper = true
                    Obj.Bought = true
                    Obj.DropperChecked = false
                then:
                    set DropsCoinsASec = DropsCoinsASec + Obj.DropAmountASec
                    set SecondDropsCoinsASec = SecondDropsCoinsASec + Obj.SecondDropAmountASec
                    set Obj.DropperChecked = true
                    Print("added {Obj.DropAmountASec} to now {DropsCoinsASec} coins a second")
                    Print("added {Obj.SecondDropAmountASec} to now {SecondDropsCoinsASec} coins a second")

    RebirthChecker()<suspends>:void=
        loop:
            Sleep(0.0)
            for(Obj:PropsAndTriggers):
                if (Obj.RibirthSignal = true):
                    Print("jo is rebirth und so")
                    for(Obj2:PropsAndTriggers):    
                        set Obj2.iteration = 0
                        set Obj2.DropperChecked = false
                        set Obj2.Bought = false
                        set SecondDropsCoinsASec = 0
                        set SecondDropsCoinsASecMulti = 1.0
                        set DropsCoinsASec = 0
                        set DropsCoinsASecMulti = 1.0
                        Obj2.SendRibirthSignalFalse()
                        GetTAInstance().MakeBothHide(Obj2)
                        ShowFirstButton()

    var SecondDropsCoinsASec : int = 0
    var SecondDropsCoinsASecMulti : float = 1.0
    var DropsCoinsASec : int = 0
    var DropsCoinsASecMulti : float = 1.0

    CheckIfLeft(Agent: agent, ClassSelect:ClassSelector)<suspends>:void=  #   done
        if:
            Player:=player[Agent]
            CustomPlayer := GetGMInstance().CustomPlayers[Player]
        then:
            loop:
                Sleep(0.5)
                CustomPlayer.SetCoinsAsec(ClassSelect.DropsCoinsASec)
                CustomPlayer.SecondSetCoinsAsec(ClassSelect.SecondDropsCoinsASec)
                if:
                    CustomPlayer.LeavingPlayer = true
                then:
                    GetTAInstance().OnLeft(Self)
                        break

    BoughtChecker(Agent:agent)<suspends>:void=
        Print("BoughtChecker")
        loop:
            Sleep(0.0)
            for(Obj:PropsAndTriggers):
                if(Obj.MaybeFailed = "no"):
                    FailedToAquire(Agent)
                    set Obj.MaybeFailed = ""
                if(Obj.MaybeFailed = "yes"):
                    SuccessToAquire(Agent)
                    set Obj.MaybeFailed = ""

    ShowFirstButton()<transacts>:void=
            if(Self.PropsAndTriggers[0].Muatator_zone.TeleportTo[Self.PropsAndTriggers[0].OrigianlTransformTrigger]) {}
            if(Self.PropsAndTriggers[0].ButtonProp.TeleportTo[Self.PropsAndTriggers[0].ButtonPropOrigianlTransform]) {}
            if(Self.PropsAndTriggers[0].Billboard.TeleportTo[vector3{X:= Self.PropsAndTriggers[0].ButtonPropOrigianlTransform.Translation.X; Y:= Self.PropsAndTriggers[0].ButtonPropOrigianlTransform.Translation.Y + 100.0; Z:=Self.PropsAndTriggers[0].ButtonPropOrigianlTransform.Translation.Z}, rotation{}]) {}

    OnTeamSwitched(Agent:agent,ClassSelect:ClassSelector):void =
        if(SaveTycoonPlayerVar[Agent]){}
        ShowFirstButton()
        spawn{CheckIfLeft(Agent,ClassSelect)}  
        spawn{RebirthChecker()}
        spawn{BoughtChecker(Agent)}
        for(Obj:Self.PropsAndTriggers):
            spawn{Obj.MakeBillboardFollowAgent(GetTAInstance().TycoonPlayerAgent)}

    var OriginalTransformClassSelectProp : transform = TransformZero
    SetOriginalTransformClassSelectProp():void=
        trnsfrm := Tycoon_Startpad_Prop.GetTransform()
        set OriginalTransformClassSelectProp = trnsfrm
    
    SaveTycoonPlayerVar(MaybeAgent : agent)<transacts><decides>:void=
        set GetTAInstance().TycoonPlayerAgent = option{MaybeAgent}

    @editable   Tycoon_Startpad : mutator_zone_device = mutator_zone_device{}
    @editable   Tycoon_Startpad_Prop : creative_prop = creative_prop{}
    @editable   PropsAndTriggers : []PropsAndTrigger = array{}
    
tycoon_Assets_device := class(creative_device): #   done

    @editable   TycoonSettings : ClassSelector = ClassSelector{}

    OnBegin<override>()<suspends>:void= # done
        Instance:=GetTAInstance()
        Obj := TycoonSettings
            set Instance.TheArray = option{Obj.PropsAndTriggers}
            Obj.SetOriginalTransformClassSelectProp()
            Obj.Tycoon_Startpad.AgentEntersEvent.SubscribeAgent(Obj.OnTeamSwitched, Obj)
            Obj.Tycoon_Startpad.AgentEntersEvent.Subscribe(Obj.SpawnDroppingCoinsASec)
            Obj.Tycoon_Startpad.AgentEntersEvent.Subscribe(Obj.SpawnCollectDropperCoinsAsec)
            Obj.Tycoon_Startpad.AgentEntersEvent.SubscribeAgent(Instance.OnClaimedClassSelectors, Obj)
            for(Obj2:Obj.PropsAndTriggers):
                set Obj2.Price_prefix_1 = Obj.Price_prefix_1
                set Obj2.Price_prefix_2 = Obj.Price_prefix_2
                set Obj2.Price_prefix_3 = Obj.Price_prefix_3
                Obj2.SetOriginalTransformTrigger(Obj2.Muatator_zone)
                Obj2.SetButtonPropOrigianlTransform(Obj2.ButtonProp)
                Obj2.Muatator_zone.AgentEntersEvent.Subscribe(Obj2.OnTriggered)
                Instance.MakeBothHide(Obj2)