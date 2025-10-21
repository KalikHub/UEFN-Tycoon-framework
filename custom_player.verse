
using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }
using { /Fortnite.com/Characters }
using { /UnrealEngine.com/Temporary/SpatialMath }
using { /Verse.org/Simulation/Tags }


custom_player := class<unique>():
    # Constructor
    Player : player

    var Coins : int
    var SecondCoins : int

    var LeavingPlayer : logic = false

    var CoinsAsec : int = 0
    var SecondCoinsAsec : int = 0

    var Rebirths : int = 0


    Init():void=    # Initializes the Fort Character as the Player
        Print("player intialized")
        
    GetCoins()<transacts>:int=
        return Coins        

    SetCoins(num:int)<transacts>:void=
        set Coins = num

    GiveCoins(num:int)<transacts>:void=
        set Coins = Coins + num

    SecondGiveCoins(num:int)<transacts>:void=
        set SecondCoins = SecondCoins + num

    GetCoinsAsec():int=
        return CoinsAsec
        
    SetCoinsAsec(num:int):void=
        set CoinsAsec = num
        
    SecondSetCoinsAsec(num:int):void=
        set SecondCoinsAsec = num

    BPFreeRewardPlayer(num:int):void=
        case(num+1):
            1=>
                Self.GiveCoins(1000)
            2=>
                Self.GiveCoins(2000)
            3=>
                Self.GiveCoins(3000)
            4=>
                Self.GiveCoins(6000)
            5=>
                Self.GiveCoins(12000)
            6=>
                Self.GiveCoins(24000)
            7=>
                Self.GiveCoins(48000)
            8=>
                Self.GiveCoins(100000)
            9=>
                Self.GiveCoins(150000)
            10=>
                Self.GiveCoins(200000)
            _=>
                Print("Error!")

    BPPremiumRewardPlayer(num:int):void=
        case(num+1):
            1=>
                Self.SecondGiveCoins(500)
            2=>
                Self.SecondGiveCoins(1000)
            3=>
                Self.SecondGiveCoins(1500)
            4=>
                Self.SecondGiveCoins(2500)
            5=>
                Self.SecondGiveCoins(3000)
            6=>
                Self.SecondGiveCoins(5000)
            7=>
                Self.SecondGiveCoins(7500)
            8=>
                Self.SecondGiveCoins(9000)
            9=>
                Self.SecondGiveCoins(10000)
            10=>
                Self.SecondGiveCoins(15000)
            _=>
                Print("Error!")


    GBRewardPlayer(num:int):void=
        case(num):
            1=>
                Self.GiveCoins(500)
            2=>
                Self.SecondGiveCoins(1000)
            3=>
                Self.GiveCoins(1500)
            4=>
                Self.SecondGiveCoins(2500)
            5=>
                Self.GiveCoins(3000)
            6=>
                Self.SecondGiveCoins(5000)
            7=>
                Self.GiveCoins(7500)
            8=>
                Self.SecondGiveCoins(9000)
            9=>
                Self.SecondGiveCoins(10000)
            10=>
                Self.GiveCoins(15000)
            11=>
                Self.SecondGiveCoins(15000)
            12=>
                Self.GiveCoins(15000)
            _=>
                Print("Error!")

    DRRewardPlayer(num:int):void=
        case(num):
            1=>
                Self.GiveCoins(500)
            2=>
                Self.SecondGiveCoins(1000)
            3=>
                Self.GiveCoins(1500)
            4=>
                Self.SecondGiveCoins(2500)
            5=>
                Self.GiveCoins(3000)
            6=>
                Self.SecondGiveCoins(5000)
            7=>
                Self.GiveCoins(7500)
            _=>
                Print("Error!")
                
    Dispose():void= #Disposes everything a player could have on leave
        set LeavingPlayer = true
        Print("Disposed!")