# IgiLoad
An Arma 3 Logistics script.

Branched from version 0.9.10_RC_e at http://www.igipl.net/en/arma3/igiload-script/

## Setup
1: Copy and paste the IgiLoad folder into your mission folder
2: Add the following line to your mission's init.sqf:

```[] execVM "IgiLoad\IgiLoadInit.sqf";```

## API

### Loading cargo from script/trigger
```[Car, [typeOf Box], "B", true, Box] spawn IL_Do_Load;"```

### Unloading cargo from script or trigger:
```[Car, true, "L"] spawn IL_Do_Unload;"```

```[Car, true] spawn IL_Do_Unload;"```

```[Car] spawn IL_Do_Unload;"```
