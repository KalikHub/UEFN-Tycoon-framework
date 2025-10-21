
using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }
using { /UnrealEngine.com/Temporary/SpatialMath }

HitBox_device := class(creative_device):

    @editable CrateProp : creative_prop = creative_prop{}
    @editable PropManip : prop_manipulator_device = prop_manipulator_device{}
    @editable VFXSpawner : vfx_spawner_device = vfx_spawner_device{}
    @editable   MoneyPerHit : int = 0
    @editable   SecondMoneyPerHit : int = 0

    var IsAnimating : logic = false

    OnBegin<override>()<suspends>:void=
        PropManip.DamagedEvent.Subscribe(OnHit)

    OnHit(Agent:agent):void=
        spawn{PlayAnimation(Agent)}
        spawn{PlayVFX()}


    PlayAnimation(Agent:agent)<suspends>:void=
        if(not IsAnimating?):
            set IsAnimating = true
            CratePos := CrateProp.GetTransform().Translation
            CrateRot := CrateProp.GetTransform().Rotation
            CrateProp.MoveTo(transform{Translation:= CratePos, Rotation:=CrateRot, Scale:= CrateProp.GetTransform().Scale}, 0.1)
            CrateProp.MoveTo(transform{Translation:= CratePos, Rotation:=CrateRot, Scale:= CrateProp.GetTransform().Scale*0.8}, 0.1)
            CrateProp.MoveTo(transform{Translation:= CratePos, Rotation:=CrateRot, Scale:= CrateProp.GetTransform().Scale}, 0.1)
            set IsAnimating = false

            if:
                Player:=player[Agent]
                CustomPlayer := GetGMInstance().CustomPlayers[Player]
            then:
                CustomPlayer.GiveCoins(MoneyPerHit)
                CustomPlayer.SecondGiveCoins(SecondMoneyPerHit)

    PlayVFX()<suspends>:void=
        VFXSpawner.Restart()
        Sleep(0.1)
        VFXSpawner.Disable()