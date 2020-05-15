.class public final Lnubia/hardware/ColorfulLightManager;
.super Ljava/lang/Object;
.source "ColorfulLightManager.java"


# static fields
.field public static final END_MEDIA_LAMP:I = 0x66

.field public static final KEYGUARD_ON:I = 0x69

.field public static final SCREEN_OFF:I = 0x67

.field public static final SCREEN_ON:I = 0x68

.field public static final SHUT_DOWN:I = 0x64

.field public static final START_MEDIA_LAMP:I = 0x65

.field private static final TAG:Ljava/lang/String;

.field public static final USER_DIFINED_PRVIEW:I = 0x6a

.field public static final USER_DIFINED_PRVIEW_CANCLE:I = 0x6b

.field private static final mIsSupportColorfulLight:Z

.field private static mService:Lnubia/hardware/IColorfulLightManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const-class v0, Lnubia/hardware/ColorfulLightManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnubia/hardware/ColorfulLightManager;->TAG:Ljava/lang/String;

    .line 9
    invoke-static {}, Lnubia/hardware/ColorfulLightManager;->checkProjectSupport()Z

    move-result v0

    sput-boolean v0, Lnubia/hardware/ColorfulLightManager;->mIsSupportColorfulLight:Z

    .line 10
    const/4 v0, 0x0

    sput-object v0, Lnubia/hardware/ColorfulLightManager;->mService:Lnubia/hardware/IColorfulLightManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkProjectSupport()Z
    .locals 3

    .line 30
    const-string v0, "true"

    const-string v1, "nubia_colorfullight_feature"

    const-string v2, "support_colorful_light"

    invoke-static {v1, v2}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static enableUserDefinedMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "filePatch"    # Ljava/lang/String;
    .param p1, "toPath"    # Ljava/lang/String;

    .line 56
    sget-boolean v0, Lnubia/hardware/ColorfulLightManager;->mIsSupportColorfulLight:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lnubia/hardware/ColorfulLightManager;->TAG:Ljava/lang/String;

    const-string v2, "the current project does not support colorful light!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return v1

    .line 62
    :cond_0
    :try_start_0
    invoke-static {}, Lnubia/hardware/ColorfulLightManager;->getService()Lnubia/hardware/IColorfulLightManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lnubia/hardware/IColorfulLightManager;->copyColorfulLightData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 66
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method private static getService()Lnubia/hardware/IColorfulLightManager;
    .locals 1

    .line 22
    sget-object v0, Lnubia/hardware/ColorfulLightManager;->mService:Lnubia/hardware/IColorfulLightManager;

    if-nez v0, :cond_0

    .line 23
    const-string v0, "nubia.colorfullight"

    .line 24
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lnubia/hardware/IColorfulLightManager$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/hardware/IColorfulLightManager;

    move-result-object v0

    sput-object v0, Lnubia/hardware/ColorfulLightManager;->mService:Lnubia/hardware/IColorfulLightManager;

    .line 26
    :cond_0
    sget-object v0, Lnubia/hardware/ColorfulLightManager;->mService:Lnubia/hardware/IColorfulLightManager;

    return-object v0
.end method

.method public static isSupportColorfulLight()Z
    .locals 1

    .line 52
    sget-boolean v0, Lnubia/hardware/ColorfulLightManager;->mIsSupportColorfulLight:Z

    return v0
.end method

.method public static requestColorfulLight(I)Z
    .locals 4
    .param p0, "known"    # I

    .line 35
    sget-boolean v0, Lnubia/hardware/ColorfulLightManager;->mIsSupportColorfulLight:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 36
    sget-object v0, Lnubia/hardware/ColorfulLightManager;->TAG:Ljava/lang/String;

    const-string v2, "the current project does not support colorful light!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return v1

    .line 41
    :cond_0
    :try_start_0
    sget-object v0, Lnubia/hardware/ColorfulLightManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestColorfulLight known="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {}, Lnubia/hardware/ColorfulLightManager;->getService()Lnubia/hardware/IColorfulLightManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lnubia/hardware/IColorfulLightManager;->requestColorfulLight(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 48
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method
