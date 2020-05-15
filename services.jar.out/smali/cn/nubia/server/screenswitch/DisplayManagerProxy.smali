.class public Lcn/nubia/server/screenswitch/DisplayManagerProxy;
.super Ljava/lang/Object;
.source "DisplayManagerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayManagerProxy"

.field private static mInstance:Lcn/nubia/server/screenswitch/DisplayManagerProxy;


# instance fields
.field mBackToken:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field mFrontToken:Landroid/os/IBinder;

.field private mGetBrightnessMethod:Ljava/lang/reflect/Method;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSetBacklight:Ljava/lang/reflect/Method;

.field private mSetBrightnessMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mInstance:Lcn/nubia/server/screenswitch/DisplayManagerProxy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mContext:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mPowerManager:Landroid/os/PowerManager;

    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mFrontToken:Landroid/os/IBinder;

    .line 40
    const/4 v1, 0x5

    invoke-static {v1}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mBackToken:Landroid/os/IBinder;

    .line 41
    const-class v1, Landroid/os/PowerManager;

    const-string/jumbo v2, "setBacklight"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    invoke-direct {p0, v1, v2, v3}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mSetBacklight:Ljava/lang/reflect/Method;

    .line 42
    return-void
.end method

.method private varargs findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 67
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 71
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    const/4 v0, 0x0

    return-object v0
.end method

.method static getInstance(Landroid/content/Context;)Lcn/nubia/server/screenswitch/DisplayManagerProxy;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 30
    sget-object v0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mInstance:Lcn/nubia/server/screenswitch/DisplayManagerProxy;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;

    invoke-direct {v0, p0}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mInstance:Lcn/nubia/server/screenswitch/DisplayManagerProxy;

    .line 33
    :cond_0
    sget-object v0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mInstance:Lcn/nubia/server/screenswitch/DisplayManagerProxy;

    return-object v0
.end method

.method private getPowerMode(Z)I
    .locals 1
    .param p1, "isOn"    # Z

    .line 61
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0
.end method

.method private updateBrightness(II)I
    .locals 2
    .param p1, "device"    # I
    .param p2, "brightness"    # I

    .line 111
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 112
    if-ne p2, v0, :cond_2

    .line 113
    sget p2, Landroid/os/PowerManager;->INTERNAL_BRIGHTNESS_ON:I

    goto :goto_0

    .line 115
    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 116
    if-ne p2, v0, :cond_1

    .line 117
    sget v0, Landroid/os/PowerManager;->INTERNAL_BRIGHTNESS_ON:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 p2, v0, -0x1

    goto :goto_0

    .line 119
    :cond_1
    sget v0, Landroid/os/PowerManager;->INTERNAL_BRIGHTNESS_ON:I

    add-int/2addr v0, p2

    add-int/lit8 p2, v0, 0x1

    .line 122
    :cond_2
    :goto_0
    return p2
.end method


# virtual methods
.method getScreenBrightness()I
    .locals 3

    .line 75
    iget-object v0, p0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mGetBrightnessMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mGetBrightnessMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 78
    :catch_1
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 82
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    nop

    .line 84
    :cond_0
    :goto_0
    const/16 v0, 0xff

    return v0
.end method

.method public setBackDisplayPowerMode(Z)V
    .locals 2
    .param p1, "isOn"    # Z

    .line 56
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackScreenPowerMode:I

    .line 57
    iget-object v0, p0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mBackToken:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->getPowerMode(Z)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->setDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 58
    return-void
.end method

.method setBacklight(II)V
    .locals 5
    .param p1, "device"    # I
    .param p2, "brightness"    # I

    .line 100
    iget-object v0, p0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->updateBrightness(II)I

    move-result v0

    move p2, v0

    .line 103
    iget-object v0, p0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mSetBacklight:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method setDisplayManagerInternal(Landroid/hardware/display/DisplayManagerInternal;)V
    .locals 5
    .param p1, "internal"    # Landroid/hardware/display/DisplayManagerInternal;

    .line 45
    iput-object p1, p0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 46
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    const-string v1, "getScreenBrightness"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-direct {p0, v0, v1, v3}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mGetBrightnessMethod:Ljava/lang/reflect/Method;

    .line 47
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    const-string/jumbo v1, "setScreenBrightness"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-direct {p0, v0, v1, v3}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mSetBrightnessMethod:Ljava/lang/reflect/Method;

    .line 48
    return-void
.end method

.method public setFrontDisplayPowerMode(Z)V
    .locals 2
    .param p1, "isOn"    # Z

    .line 51
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontScreenPowerMode:I

    .line 52
    iget-object v0, p0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mFrontToken:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->getPowerMode(Z)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->setDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 53
    return-void
.end method

.method setScreenBrightness(I)V
    .locals 5
    .param p1, "brightness"    # I

    .line 88
    iget-object v0, p0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mSetBrightnessMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mSetBrightnessMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 91
    :catch_1
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 95
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_0
    nop

    .line 97
    :cond_0
    :goto_1
    return-void
.end method
