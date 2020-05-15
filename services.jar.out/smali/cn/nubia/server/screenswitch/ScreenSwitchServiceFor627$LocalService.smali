.class final Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;
.super Lnubia/os/screenswitch/ScreenSwitchInternal;
.source "ScreenSwitchServiceFor627.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field private mIsLeft:Z

.field private mPowerOnStart:Z

.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;


# direct methods
.method private constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 0

    .line 1602
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-direct {p0}, Lnubia/os/screenswitch/ScreenSwitchInternal;-><init>()V

    .line 1739
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->mIsLeft:Z

    .line 1819
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->mPowerOnStart:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p2, "x1"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;

    .line 1602
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    return-void
.end method

.method private getForceIdForpowerOrFingerprint(Ljava/lang/String;)I
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .line 1653
    const/4 v0, -0x1

    .line 1654
    .local v0, "forceId":I
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 1655
    const-string v1, "android.policy:POWER_LEFT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1656
    const/4 v0, 0x1

    goto :goto_0

    .line 1657
    :cond_0
    const-string v1, "android.policy:POWER_RIGHT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1658
    const/4 v0, 0x0

    goto :goto_0

    .line 1659
    :cond_1
    const-string v1, "android.policy:FINGERPRINT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1660
    const-string/jumbo v1, "sys.fp.auth_ta"

    const-string/jumbo v3, "right"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1661
    .local v1, "leftOrRight":Ljava/lang/String;
    const-string v3, "ScreenSwitchService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getForceIdForpowerOrFingerprint fp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    const-string/jumbo v3, "right"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    move v0, v3

    .line 1663
    .end local v1    # "leftOrRight":Ljava/lang/String;
    goto :goto_0

    .line 1664
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 1665
    const/4 v0, 0x1

    goto :goto_0

    .line 1667
    :cond_3
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 1668
    const/4 v0, 0x0

    goto :goto_0

    .line 1670
    :cond_4
    const/4 v0, -0x1

    .line 1672
    :cond_5
    :goto_0
    const-string v1, "android.policy:FINGERPRINT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, -0x1

    if-le v0, v1, :cond_6

    .line 1673
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/MotionDetector;

    move-result-object v1

    iput-boolean v2, v1, Lcn/nubia/server/screenswitch/MotionDetector;->mWakeUpAndUnlock:Z

    .line 1675
    :cond_6
    return v0
.end method


# virtual methods
.method public checkPressSensorEffective()Z
    .locals 1

    .line 1714
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    return v0
.end method

.method public confirmBrightness(II)I
    .locals 3
    .param p1, "device"    # I
    .param p2, "brightness"    # I

    .line 1806
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    .line 1807
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 1808
    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1809
    :cond_2
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set brightness 0 when device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", real brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    :cond_3
    const/high16 v0, -0x80000000

    return v0

    .line 1812
    :cond_4
    return p2
.end method

.method public confirmLayerStack(I)I
    .locals 1
    .param p1, "device"    # I

    .line 1816
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchImplFor627;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->confirmLayerStack(I)I

    move-result v0

    return v0
.end method

.method public confirmPowerState(II)I
    .locals 8
    .param p1, "device"    # I
    .param p2, "state"    # I

    .line 1822
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$702(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 1823
    const/4 v0, -0x1

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-ne p2, v3, :cond_a

    .line 1824
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$12400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v4

    if-le v4, v0, :cond_0

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$12400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v4

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$12500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v4

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v4

    .line 1825
    .local v4, "target":I
    :goto_0
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "ScreenSwitchService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forcedScreenId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v7}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$12400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", startOrientationSensor="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 1826
    invoke-static {v7}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$12500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mSensorTargetId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v7}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", target="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mPowerOnStart="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->mPowerOnStart:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1825
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    :cond_2
    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$12400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$12500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v5

    if-nez v5, :cond_4

    .line 1829
    :cond_3
    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$8900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1830
    const/4 v4, 0x4

    .line 1833
    :cond_4
    iget-boolean v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->mPowerOnStart:Z

    if-nez v5, :cond_5

    .line 1834
    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchImplFor627;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v6}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchImplFor627;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->getSwitchingMode(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->notifyScreenModeChanged(I)V

    .line 1835
    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->mPowerOnStart:Z

    .line 1838
    :cond_5
    if-nez p1, :cond_7

    .line 1839
    if-ne v4, v1, :cond_6

    .line 1840
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)V

    .line 1841
    sput v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontScreenPowerMode:I

    .line 1842
    return v1

    .line 1844
    :cond_6
    sput v3, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontScreenPowerMode:I

    .line 1845
    return v3

    .line 1847
    :cond_7
    if-ne p1, v2, :cond_9

    .line 1848
    if-nez v4, :cond_8

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$8900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1849
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)V

    .line 1850
    sput v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackScreenPowerMode:I

    .line 1851
    return v1

    .line 1853
    :cond_8
    sput v3, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackScreenPowerMode:I

    .line 1854
    return v3

    .line 1857
    .end local v4    # "target":I
    :cond_9
    goto :goto_1

    :cond_a
    const/4 v3, 0x3

    if-eq p2, v3, :cond_f

    const/4 v3, 0x4

    if-ne p2, v3, :cond_b

    goto :goto_2

    .line 1867
    :cond_b
    if-nez p1, :cond_c

    sput p2, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontScreenPowerMode:I

    .line 1868
    :cond_c
    if-ne p1, v2, :cond_d

    sput p2, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackScreenPowerMode:I

    .line 1869
    :cond_d
    if-ne p2, v1, :cond_e

    .line 1870
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)V

    .line 1873
    :cond_e
    :goto_1
    return v0

    .line 1859
    :cond_f
    :goto_2
    if-eqz p1, :cond_11

    if-ne p1, v2, :cond_10

    goto :goto_3

    .line 1865
    :cond_10
    return v0

    .line 1860
    :cond_11
    :goto_3
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$12600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/DualAODScreenStateHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/DualAODScreenStateHelper;->getPowerStateForAOD(II)I

    move-result v0

    .line 1861
    .local v0, "result":I
    if-nez p1, :cond_12

    sput v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontScreenPowerMode:I

    .line 1862
    :cond_12
    if-ne p1, v2, :cond_13

    sput v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackScreenPowerMode:I

    .line 1863
    :cond_13
    return v0
.end method

.method public getShowingDisplayId()I
    .locals 2

    .line 1772
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isKeepAdj(I)Z
    .locals 2
    .param p1, "pid"    # I

    .line 1795
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$2100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1796
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$12200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 1797
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$12200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$12300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method

.method public isLandscapeSwipe()Z
    .locals 1

    .line 1759
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$11500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    return v0
.end method

.method public isMultiTasksEnable()Z
    .locals 1

    .line 1801
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$2100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    return v0
.end method

.method public isSensorOnWhenWakeUp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 1679
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 1680
    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "android.policy:POWER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1679
    :goto_1
    return v0
.end method

.method public isThreeFingerLeft()Z
    .locals 1

    .line 1750
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->mIsLeft:Z

    return v0
.end method

.method public isThreeFingerSwipe()Z
    .locals 1

    .line 1746
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$11400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    return v0
.end method

.method public noteActivityResume(IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;ZI)Z
    .locals 8
    .param p1, "stackId"    # I
    .param p2, "taskId"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "cls"    # Ljava/lang/String;
    .param p5, "token"    # Landroid/view/IApplicationToken;
    .param p6, "isIgnore"    # Z
    .param p7, "pid"    # I

    .line 1736
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$11200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;ZI)Z

    move-result v0

    return v0
.end method

.method public noteAllDrawn()V
    .locals 2

    .line 1776
    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "noteAllDrawn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$11700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1778
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$11702(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 1779
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$11800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    .line 1780
    return-void
.end method

.method public noteDisplayFreezingState(Z)V
    .locals 1
    .param p1, "isFreezing"    # Z

    .line 1791
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$12102(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 1792
    return-void
.end method

.method public noteExitTopTask(I)V
    .locals 1
    .param p1, "taskId"    # I

    .line 1768
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$11600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)V

    .line 1769
    return-void
.end method

.method public noteSurfaceChange(IILandroid/view/IApplicationToken;ZI)V
    .locals 6
    .param p1, "stackId"    # I
    .param p2, "taskId"    # I
    .param p3, "token"    # Landroid/view/IApplicationToken;
    .param p4, "hasSurface"    # Z
    .param p5, "flags"    # I

    .line 1783
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$11900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;IILandroid/view/IApplicationToken;ZI)V

    .line 1784
    return-void
.end method

.method public noteUpdateRotation(Z)V
    .locals 1
    .param p1, "isStart"    # Z

    .line 1787
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$12002(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 1788
    return-void
.end method

.method public resetDetectorWhenTimeout()V
    .locals 1

    .line 1688
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/HorizontalDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/HorizontalDetector;->disable()V

    .line 1689
    return-void
.end method

.method public resetLandscapeSwipe()V
    .locals 2

    .line 1763
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "resetLandscapeSwipe"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$11502(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 1765
    return-void
.end method

.method public resetThreeFingerSwipe()V
    .locals 2

    .line 1754
    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "resetLandscapeSwipe"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$11402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 1756
    return-void
.end method

.method public setDualFingerprintPress(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .line 1732
    return-void
.end method

.method public setPressSensorActive(Z)V
    .locals 2
    .param p1, "active"    # Z

    .line 1697
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService$1;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1711
    return-void
.end method

.method public setRequest(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
    .locals 1
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1604
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1605
    return-void
.end method

.method public setScreenFaceUpListener(Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;)V
    .locals 3
    .param p1, "listener"    # Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;

    .line 1692
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenFaceUpListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$502(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;)Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;

    .line 1694
    return-void
.end method

.method public startDetectingScreen()V
    .locals 1

    .line 1684
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/HorizontalDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/HorizontalDetector;->enable()V

    .line 1685
    return-void
.end method

.method public threeFingerSwipe(Z)V
    .locals 1
    .param p1, "isLeft"    # Z

    .line 1741
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->mIsLeft:Z

    .line 1742
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$11300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    .line 1743
    return-void
.end method

.method public updateNubiaMode()V
    .locals 3

    .line 1878
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->mPowerOnStart:Z

    if-eqz v0, :cond_0

    .line 1879
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$12402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)I

    .line 1880
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$12502(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 1881
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)I

    .line 1882
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchImplFor627;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchImplFor627;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->getScreenMode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->notifyScreenModeChanged(I)V

    .line 1883
    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->mPowerOnStart:Z

    .line 1885
    :cond_0
    return-void
.end method

.method public updateRequest(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .line 1608
    const-string v0, "1"

    const-string/jumbo v1, "sys.aod.disable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1609
    .local v0, "inScreenProjection":Z
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ScreenSwitchService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wakeUpNoUpdateLocked reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mPoweronUpScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1611
    const-string v3, "ScreenSwitchService"

    const-string v4, " switch to primary display when screen projection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/Object;I)V

    .line 1613
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/Object;Z)V

    goto/16 :goto_1

    .line 1615
    :cond_1
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_9

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "android.policy:AOD_WAKEUP"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_0

    .line 1618
    :cond_2
    const-string/jumbo v3, "nubia_front_aod"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1619
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/Object;I)V

    .line 1620
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/Object;Z)V

    goto/16 :goto_1

    .line 1621
    :cond_3
    const-string/jumbo v3, "nubia_back_aod"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1622
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/Object;I)V

    .line 1623
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/Object;Z)V

    goto/16 :goto_1

    .line 1624
    :cond_4
    const-string/jumbo v3, "nubia_aod"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1625
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/Object;I)V

    .line 1626
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/Object;Z)V

    goto/16 :goto_1

    .line 1627
    :cond_5
    if-eqz p1, :cond_7

    const-string v3, "android.policy:FINGERPRINT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "android.policy:POWER"

    .line 1628
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1629
    :cond_6
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v3

    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->getForceIdForpowerOrFingerprint(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/Object;I)V

    .line 1630
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->isSensorOnWhenWakeUp(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 1631
    :cond_7
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$2200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1632
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/Object;I)V

    .line 1633
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 1635
    :cond_8
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/Object;I)V

    .line 1636
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 1616
    :cond_9
    :goto_0
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/Object;I)V

    .line 1617
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/Object;Z)V

    .line 1639
    :goto_1
    if-eqz p1, :cond_b

    const-string v2, "android.server.wm:TURN_ON"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "com.android.incallui"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "com.tencent.mm"

    .line 1640
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "com.tencent.mobileqq"

    .line 1641
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1642
    :cond_a
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    goto :goto_3

    .line 1643
    :cond_b
    const-string v2, "AlarmAlertFullScreen"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "bright"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_2

    .line 1647
    :cond_c
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$10700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Z

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    goto :goto_3

    .line 1645
    :cond_d
    :goto_2
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 1650
    :goto_3
    return-void
.end method
