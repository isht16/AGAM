# Android Garbage Applications Manager (AGAM)

_I recommend cleaning the OS after an update._

https://developer.android.com/tools/releases/platform-tools

```
.\vacuum.ps1 <AMI>
```

```
./vacuum.sh <AMI>
```

## Application Management Instructions (AMI)

I have created a small format to have a basis for reusing code in other terminals.

### `VERSION <NUMBER>`

### `COMMENT <TEXT>`

### `DEVELOPER <TEXT>`

### `KEEP <BOOLEAN>`

### `DISABLE <NAME> <PACKAGE> <DEPENDENCE> <DEPENDENCE> <DEPENDENCE> …`

### `UNINSTALL <NAME> <PACKAGE> <DEPENDENCE> <DEPENDENCE> <DEPENDENCE> …`
