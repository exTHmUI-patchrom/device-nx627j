.class public final Lcn/nubia/server/ServiceInfoCache;
.super Ljava/lang/Object;
.source "ServiceInfoCache.java"


# static fields
.field static mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/server/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/server/ServiceInfoCache;->mInfos:Ljava/util/ArrayList;

    .line 20
    const-string v0, "cn.nubia.server.SystemAccessService"

    invoke-static {v0}, Lcn/nubia/server/ServiceInfoCache;->addService(Ljava/lang/String;)V

    .line 21
    const-string v0, "cn.nubia.server.appmgmt.ApplicationManagerService"

    sget-object v1, Lcn/nubia/server/Sequence;->LAST:Lcn/nubia/server/Sequence;

    invoke-static {v0, v1}, Lcn/nubia/server/ServiceInfoCache;->addService(Ljava/lang/String;Lcn/nubia/server/Sequence;)V

    .line 23
    const-string v0, "cn.nubia.server.breathinglight.BreathingLightService"

    invoke-static {v0}, Lcn/nubia/server/ServiceInfoCache;->addService(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lnubia/hardware/ColorfulLightManager;->isSupportColorfulLight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "cn.nubia.server.colorfullight.ColorfulLightService"

    invoke-static {v0}, Lcn/nubia/server/ServiceInfoCache;->addService(Ljava/lang/String;)V

    .line 28
    :cond_0
    invoke-static {}, Lnubia/enterprisecustom/EnterpriseCustomManager;->checkProjectSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    const-string v0, "cn.nubia.server.enterprisecustom.EnterpriseCustomService"

    invoke-static {v0}, Lcn/nubia/server/ServiceInfoCache;->addService(Ljava/lang/String;)V

    .line 32
    :cond_1
    const-string v0, "cn.nubia.server.TeleStaticService"

    sget-object v1, Lcn/nubia/server/Sequence;->LAST:Lcn/nubia/server/Sequence;

    invoke-static {v0, v1}, Lcn/nubia/server/ServiceInfoCache;->addService(Ljava/lang/String;Lcn/nubia/server/Sequence;)V

    .line 33
    const-string v0, "cn.nubia.server.TIHapticsService"

    sget-object v1, Lcn/nubia/server/Sequence;->LAST:Lcn/nubia/server/Sequence;

    invoke-static {v0, v1}, Lcn/nubia/server/ServiceInfoCache;->addService(Ljava/lang/String;Lcn/nubia/server/Sequence;)V

    .line 34
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "NX616"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    const-string v0, "cn.nubia.server.screenswitch.ScreenSwitchService"

    sget-object v1, Lcn/nubia/server/Sequence;->LAST:Lcn/nubia/server/Sequence;

    invoke-static {v0, v1}, Lcn/nubia/server/ServiceInfoCache;->addService(Ljava/lang/String;Lcn/nubia/server/Sequence;)V

    goto :goto_0

    .line 37
    :cond_2
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "NX627"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38
    const-string v0, "cn.nubia.server.screenswitch.ScreenSwitchServiceFor627"

    sget-object v1, Lcn/nubia/server/Sequence;->LAST:Lcn/nubia/server/Sequence;

    invoke-static {v0, v1}, Lcn/nubia/server/ServiceInfoCache;->addService(Ljava/lang/String;Lcn/nubia/server/Sequence;)V

    .line 41
    :cond_3
    :goto_0
    invoke-static {}, Lnubia/os/presssensor/PressSensorFeatureConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    const-string v0, "cn.nubia.server.presssensor.PressSensorService"

    sget-object v1, Lcn/nubia/server/Sequence;->FIRST:Lcn/nubia/server/Sequence;

    invoke-static {v0, v1}, Lcn/nubia/server/ServiceInfoCache;->addService(Ljava/lang/String;Lcn/nubia/server/Sequence;)V

    .line 45
    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addService(Ljava/lang/String;)V
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/nubia/server/ServiceInfoCache;->addService(Ljava/lang/String;Z)V

    .line 49
    return-void
.end method

.method private static addService(Ljava/lang/String;Lcn/nubia/server/Sequence;)V
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "seq"    # Lcn/nubia/server/Sequence;

    .line 56
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcn/nubia/server/ServiceInfoCache;->addService(Ljava/lang/String;ZLcn/nubia/server/Sequence;)V

    .line 57
    return-void
.end method

.method private static addService(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "hasFeature"    # Z

    .line 52
    sget-object v0, Lcn/nubia/server/Sequence;->FIRST:Lcn/nubia/server/Sequence;

    invoke-static {p0, p1, v0}, Lcn/nubia/server/ServiceInfoCache;->addService(Ljava/lang/String;ZLcn/nubia/server/Sequence;)V

    .line 53
    return-void
.end method

.method private static addService(Ljava/lang/String;ZLcn/nubia/server/Sequence;)V
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "hasFeature"    # Z
    .param p2, "seq"    # Lcn/nubia/server/Sequence;

    .line 60
    new-instance v0, Lcn/nubia/server/ServiceInfo;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/server/ServiceInfo;-><init>(Ljava/lang/String;ZLcn/nubia/server/Sequence;)V

    .line 61
    .local v0, "info":Lcn/nubia/server/ServiceInfo;
    sget-object v1, Lcn/nubia/server/ServiceInfoCache;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method
