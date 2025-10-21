using { /Fortnite.com/Devices }
using { /Fortnite.com/UI }
using { /Verse.org/Simulation }
using { /Verse.org/Colors/NamedColors }
using { /UnrealEngine.com/Temporary/Diagnostics }
using { /UnrealEngine.com/Temporary/UI }
using { /UnrealEngine.com/Temporary/SpatialMath }
using { /Verse.org/Assets }

ResourceUIDevice := class(creative_device):

    S2M<localizes>(S:string):message="{S}"
    CoinTexture : texture = UI.UICash
    SecondCoinTexture : texture = UI.SecondUICash
    SmallCoinTexture : texture = UI.UICashSmall
    SecondSmallCoinTexture : texture = UI.SecondUICashSmall
    RebirthTexture : texture = UI.UIRebirth
    SmallRebirthTexture : texture = UI.SmallUIRebirth
    
    @editable   Reminder    :   string = "dont forget spawner tags on the spawners!"
    @editable   RefreshRate :   float = 0.0

    var ResourceTextBlockPerAgent : [agent]?text_block = map{}
    var ResourceCoinsPerSecPerAgent :[agent]?text_block = map{}
    var SecondResourceTextBlockPerAgent : [agent]?text_block = map{}
    var SecondResourceCoinsPerSecPerAgent : [agent]?text_block = map{}
    var ResourceRebirthTextBlockPerAgent : [agent]?text_block = map{}
    var ResourceSmallRebirthTextBlockPerAgent : [agent]?text_block = map{}


    OnBegin<override>()<suspends>:void=

        InitSpawners()

    InitSpawners():void=    # Initializes the Spawners around the map (with the tag "spawner")
        Spawners := GetCreativeObjectsWithTag(spawner{})
        for(obj:Spawners):
            if (Spawner := player_spawner_device[obj]):
                Spawner.SpawnedEvent.Subscribe(PlayerSpawned)

    PlayerSpawned(Agent:agent):void=
        Print("Player Spawned")
        if (MyTextBlock:=ResourceTextBlockPerAgent[Agent]?){}
        if (MySomething := ResourceCoinsPerSecPerAgent[Agent]?){}
        if (MySecondTextBlock:=SecondResourceTextBlockPerAgent[Agent]?){}
        if (MySecondSomething := SecondResourceCoinsPerSecPerAgent[Agent]?){}
        if (MyRebirthTexture := ResourceRebirthTextBlockPerAgent[Agent]?){}
        if (MySmallRebirthTexture := ResourceSmallRebirthTextBlockPerAgent[Agent]?){}
        else:
            AssignUI(Agent)
        
    AssignUI(Agent:agent):void=
        
        Print("Assigning UI")
        MyCanvas:=MakeCanvas(Agent)
        if:
            PlayerInterface:=GetPlayerUI[player[Agent]]
        then:
            PlayerInterface.AddWidget(MyCanvas)
            spawn{RefreshUI(Agent)}
    
    RefreshUI(Agent:agent)<suspends>:void=
        Print("Starting to Refresh")
        if:
            TextBlock := ResourceTextBlockPerAgent[Agent]?
            SecondTextBlock := SecondResourceTextBlockPerAgent[Agent]?
            CoinsPerSec := ResourceCoinsPerSecPerAgent[Agent]?
            SecondCoinsPerSec := SecondResourceCoinsPerSecPerAgent[Agent]?
            MyRebirthTexture := ResourceRebirthTextBlockPerAgent[Agent]?
            MySmallRebirthTexture := ResourceSmallRebirthTextBlockPerAgent[Agent]?
        then:
            if:
                Player:=player[Agent]
                CustomPlayer := GetGMInstance().CustomPlayers[Player]
            then:
                loop:
                    Sleep(RefreshRate)
                    MyResource := CustomPlayer.GetCoins()
                    MyCoinsPerSecResource := CustomPlayer.CoinsAsec
                    MySecondSource := CustomPlayer.SecondCoins
                    MySecondCoinsPerSecResource := CustomPlayer.SecondCoinsAsec
                    Rebirths := CustomPlayer.Rebirths
                    TextBlock.SetText(S2M("${MyResource}"))
                    CoinsPerSec.SetText(S2M("${MyCoinsPerSecResource}/sec"))
                    TextBlock.SetShadowOpacity(1.0)
                    CoinsPerSec.SetShadowOpacity(1.0)
                    SecondTextBlock.SetText(S2M("{MySecondSource}"))
                    SecondCoinsPerSec.SetText(S2M("{MySecondCoinsPerSecResource}/sec"))
                    SecondTextBlock.SetShadowOpacity(1.0)
                    SecondCoinsPerSec.SetShadowOpacity(1.0)
                    MyRebirthTexture.SetText(S2M("{Rebirths}"))
                    MySmallRebirthTexture.SetText(S2M("Rebirth's"))
                    MyRebirthTexture.SetShadowOpacity(1.0)
                    MySmallRebirthTexture.SetShadowOpacity(1.0)

    MakeCanvas(Agent:agent):canvas=
        MyCoinTextureBlock : texture_block = texture_block{ DefaultImage := CoinTexture , DefaultDesiredSize := vector2{X:= 320.0,Y:= 100.0} }
        MyCoinsPerSecTextureBlock : texture_block = texture_block{ DefaultImage := SmallCoinTexture , DefaultDesiredSize := vector2{X:= 190.0,Y:= 56.25} }
        MySecondCoinTextureBlock : texture_block = texture_block{ DefaultImage := SecondCoinTexture , DefaultDesiredSize := vector2{X:= 320.0,Y:= 100.0} }
        MySecondCoinsPerSecTextureBlock : texture_block = texture_block{ DefaultImage := SecondSmallCoinTexture , DefaultDesiredSize := vector2{X:= 190.0,Y:= 56.25} }
        MyRebirthTextureBlock : texture_block = texture_block{ DefaultImage := RebirthTexture , DefaultDesiredSize := vector2{X:= 320.0,Y:= 100.0} }
        MyRebirthsPerSec : texture_block = texture_block{ DefaultImage := SmallRebirthTexture , DefaultDesiredSize := vector2{X:= 190.0,Y:= 56.25} }

        MyTextBlock:=text_block:
            DefaultTextColor:= White
            DefaultShadowColor:= Black
            DefaultShadowOffset:= option{vector2{X:=2.0, Y:=2.0}}
            DefaultTextOpacity:=1.0
        MyCoinsPerSec:=text_block:
            DefaultTextColor:= White
            DefaultShadowColor:= Black
            DefaultShadowOffset:= option{vector2{X:=2.0, Y:=2.0}}
            DefaultTextOpacity:=1.0
        MySecondCoinTextBlock:=text_block:
            DefaultTextColor:= White
            DefaultShadowColor:= Black
            DefaultShadowOffset:= option{vector2{X:=2.0, Y:=2.0}}
            DefaultTextOpacity:=1.0
        MySecondCoinsPerSec:=text_block:
            DefaultTextColor:= White
            DefaultShadowColor:= Black
            DefaultShadowOffset:= option{vector2{X:=2.0, Y:=2.0}}
            DefaultTextOpacity:=1.0
        MyRebirthTextBlock:=text_block:
            DefaultTextColor:= White
            DefaultShadowColor:= Black
            DefaultShadowOffset:= option{vector2{X:=2.0, Y:=2.0}}
            DefaultTextOpacity:=1.0
        MyRebirthsPerSecTextureBlockTextBlock:=text_block:
            DefaultTextColor:= White
            DefaultShadowColor:= Black
            DefaultShadowOffset:= option{vector2{X:=2.0, Y:=2.0}}
            DefaultTextOpacity:=1.0

        if(set ResourceTextBlockPerAgent[Agent] = option{MyTextBlock}){}
        if(set SecondResourceTextBlockPerAgent[Agent] = option{MySecondCoinTextBlock}){}
        if(set ResourceCoinsPerSecPerAgent[Agent] = option{MyCoinsPerSec}){}
        if(set SecondResourceCoinsPerSecPerAgent[Agent] = option{MySecondCoinsPerSec}){}
        
        if(set ResourceRebirthTextBlockPerAgent[Agent] = option{MyRebirthTextBlock}){}
        if(set ResourceSmallRebirthTextBlockPerAgent[Agent] = option{MyRebirthsPerSecTextureBlockTextBlock}){}


        MyCanvas:=canvas:
            Slots:=array:
                canvas_slot:
                    Widget:=MyCoinTextureBlock  
                    Anchors:=anchors{Minimum:=vector2{X:=0.0,Y:=0.5},Maximum:=vector2{X:=0.0,Y:=0.5}}
                    Offsets:=margin{Left:=10.0 - 10.0,Top:=-64.0,Right:=0.0,Bottom:=0.0} # Adjust for image placement
                    Alignment := vector2{X := 0.0, Y := 0.5}
                    SizeToContent := true
                canvas_slot:
                    Widget:=MyTextBlock
                    Anchors:=anchors{Minimum:=vector2{X:=0.0,Y:=0.5},Maximum:=vector2{X:=0.0,Y:=0.5}}
                    Offsets:=margin{Left:=210.0 - 10.0,Top:=-64.0,Right:=350.0,Bottom:=485.0}
                    Alignment := vector2{X := 0.5, Y := 0.5}
                    SizeToContent := true
                canvas_slot:
                    Widget:=MyCoinsPerSec
                    Anchors:=anchors{Minimum:=vector2{X:=0.0,Y:=0.5},Maximum:=vector2{X:=0.0,Y:=0.5}}
                    Offsets:=margin{Left:=274.0 - 10.0,Top:=-24.0,Right:=350.0,Bottom:=485.0}
                    Alignment := vector2{X := 0.5, Y := 0.5}
                    SizeToContent := true
                canvas_slot:
                    Widget:=MyCoinsPerSecTextureBlock  
                    Anchors:=anchors{Minimum:=vector2{X:=0.0,Y:=0.5},Maximum:=vector2{X:=0.0,Y:=0.5}}
                    Offsets:=margin{Left:=175.0 - 10.0,Top:=-24.0,Right:=0.0,Bottom:=0.0} # Adjust for image placement
                    Alignment := vector2{X := 0.0, Y := 0.5}
                    SizeToContent := true
                canvas_slot:
                    Widget:=MySecondCoinTextureBlock  
                    Anchors:=anchors{Minimum:=vector2{X:=0.0,Y:=0.5},Maximum:=vector2{X:=0.0,Y:=0.5}}
                    Offsets:=margin{Left:=10.0 - 10.0,Top:=-64.0 + 110.0,Right:=0.0,Bottom:=0.0} # Adjust for image placement
                    Alignment := vector2{X := 0.0, Y := 0.5}
                    SizeToContent := true
                canvas_slot:
                    Widget:=MySecondCoinTextBlock
                    Anchors:=anchors{Minimum:=vector2{X:=0.0,Y:=0.5},Maximum:=vector2{X:=0.0,Y:=0.5}}
                    Offsets:=margin{Left:=210.0 - 10.0,Top:=-64.0 + 110.0,Right:=350.0,Bottom:=485.0}
                    Alignment := vector2{X := 0.5, Y := 0.5}
                    SizeToContent := true
                canvas_slot:
                    Widget:=MySecondCoinsPerSec
                    Anchors:=anchors{Minimum:=vector2{X:=0.0,Y:=0.5},Maximum:=vector2{X:=0.0,Y:=0.5}}
                    Offsets:=margin{Left:=274.0 - 10.0,Top:=-24.0 + 110.0,Right:=350.0,Bottom:=485.0}
                    Alignment := vector2{X := 0.5, Y := 0.5}
                    SizeToContent := true
                canvas_slot:
                    Widget:=MySecondCoinsPerSecTextureBlock  
                    Anchors:=anchors{Minimum:=vector2{X:=0.0,Y:=0.5},Maximum:=vector2{X:=0.0,Y:=0.5}}
                    Offsets:=margin{Left:=175.0 - 10.0,Top:=-24.0 + 110.0,Right:=0.0,Bottom:=0.0} # Adjust for image placement
                    Alignment := vector2{X := 0.0, Y := 0.5}
                    SizeToContent := true
                canvas_slot:
                    Widget:=MyRebirthTextureBlock  
                    Anchors:=anchors{Minimum:=vector2{X:=0.0,Y:=0.5},Maximum:=vector2{X:=0.0,Y:=0.5}}
                    Offsets:=margin{Left:=10.0 - 10.0,Top:=-64.0 + 220.0,Right:=0.0,Bottom:=0.0} # Adjust for image placement
                    Alignment := vector2{X := 0.0, Y := 0.5}
                    SizeToContent := true
                canvas_slot:
                    Widget:=MyRebirthTextBlock
                    Anchors:=anchors{Minimum:=vector2{X:=0.0,Y:=0.5},Maximum:=vector2{X:=0.0,Y:=0.5}}
                    Offsets:=margin{Left:=210.0 - 10.0,Top:=-64.0 + 220.0,Right:=350.0,Bottom:=485.0}
                    Alignment := vector2{X := 0.5, Y := 0.5}
                    SizeToContent := true
                canvas_slot:
                    Widget:=MyRebirthsPerSec
                    Anchors:=anchors{Minimum:=vector2{X:=0.0,Y:=0.5},Maximum:=vector2{X:=0.0,Y:=0.5}}
                    Offsets:=margin{Left:=274.0 - 10.0,Top:=-24.0 + 220.0,Right:=350.0,Bottom:=485.0}
                    Alignment := vector2{X := 0.5, Y := 0.5}
                    SizeToContent := true
                canvas_slot:
                    Widget:=MyRebirthsPerSecTextureBlockTextBlock
                    Anchors:=anchors{Minimum:=vector2{X:=0.0,Y:=0.5},Maximum:=vector2{X:=0.0,Y:=0.5}}
                    Offsets:=margin{Left:=205.0 - 10.0,Top:=-24.0 + 220.0,Right:=0.0,Bottom:=0.0} # Adjust for image placement
                    Alignment := vector2{X := 0.0, Y := 0.5}
                    SizeToContent := true
        return MyCanvas