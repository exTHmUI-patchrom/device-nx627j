.class Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;
.super Landroid/database/ContentObserver;
.source "ScreenSwitchServiceFor627.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->registerSettingsOberser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

.field final synthetic val$donotRemindUri:Landroid/net/Uri;

.field final synthetic val$dualscreenShortcutUri:Landroid/net/Uri;

.field final synthetic val$enableInWizardUri:Landroid/net/Uri;

.field final synthetic val$floatUri:Landroid/net/Uri;

.field final synthetic val$headsUpUri:Landroid/net/Uri;

.field final synthetic val$multiTasksUri:Landroid/net/Uri;

.field final synthetic val$poweronUri:Landroid/net/Uri;

.field final synthetic val$pressureLongSwitchUri:Landroid/net/Uri;

.field final synthetic val$settingUri:Landroid/net/Uri;

.field final synthetic val$showMainWhenCallUri:Landroid/net/Uri;

.field final synthetic val$switchModeUri:Landroid/net/Uri;

.field final synthetic val$threefingerUri:Landroid/net/Uri;

.field final synthetic val$videoUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Landroid/os/Handler;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 397
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iput-object p3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$settingUri:Landroid/net/Uri;

    iput-object p4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$videoUri:Landroid/net/Uri;

    iput-object p5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$switchModeUri:Landroid/net/Uri;

    iput-object p6, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$floatUri:Landroid/net/Uri;

    iput-object p7, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$poweronUri:Landroid/net/Uri;

    iput-object p8, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$donotRemindUri:Landroid/net/Uri;

    iput-object p9, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$enableInWizardUri:Landroid/net/Uri;

    iput-object p10, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$multiTasksUri:Landroid/net/Uri;

    iput-object p11, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$showMainWhenCallUri:Landroid/net/Uri;

    iput-object p12, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$pressureLongSwitchUri:Landroid/net/Uri;

    iput-object p13, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$headsUpUri:Landroid/net/Uri;

    iput-object p14, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$threefingerUri:Landroid/net/Uri;

    iput-object p15, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$dualscreenShortcutUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 401
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$settingUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_switch_screen"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v0, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1102(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 404
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ScreenSwitchService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAutoSwitch changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/MotionDetector;

    move-result-object v0

    iput-boolean v1, v0, Lcn/nubia/server/screenswitch/MotionDetector;->mWakeUpAndUnlock:Z

    .line 406
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    goto/16 :goto_2

    .line 407
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$videoUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 408
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "isVideoIncomingCall"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 409
    .local v0, "a":I
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "ScreenSwitchService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isVideoIncomingCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .end local v0    # "a":I
    :cond_3
    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$switchModeUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 411
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "switch_screen_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1502(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)I

    .line 413
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ScreenSwitchService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSwitchMode changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_5
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 415
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    .line 417
    :cond_6
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/MotionDetector;

    move-result-object v0

    iput-boolean v1, v0, Lcn/nubia/server/screenswitch/MotionDetector;->mWakeUpAndUnlock:Z

    .line 418
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    .line 419
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/MotionDetector;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/MotionDetector;->setSwitchMode(I)V

    goto/16 :goto_2

    .line 420
    :cond_7
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$floatUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 421
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 422
    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "float_switch_screen"

    .line 421
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_8

    move v1, v2

    nop

    :cond_8
    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1702(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 424
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 425
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_switch_screen"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 428
    :cond_9
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsFloatSwitch changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_a
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    goto/16 :goto_2

    .line 430
    :cond_b
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$poweronUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 431
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "poweron_upturned_screen"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1802(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)I

    goto/16 :goto_2

    .line 432
    :cond_c
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$donotRemindUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 433
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "manual_switch_directly"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_d

    move v1, v2

    nop

    :cond_d
    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1902(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    goto/16 :goto_2

    .line 434
    :cond_e
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$enableInWizardUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 435
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "nubia_switch_screen_enable"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_f

    move v1, v2

    nop

    :cond_f
    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$2002(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 436
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$2000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 437
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    goto/16 :goto_2

    .line 439
    :cond_10
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$multiTasksUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 440
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "multi_screen_multi_tasks"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_11

    move v1, v2

    nop

    :cond_11
    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$2102(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    goto/16 :goto_2

    .line 441
    :cond_12
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$showMainWhenCallUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 442
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "always_show_main_screen_when_call"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_13

    move v1, v2

    nop

    :cond_13
    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$2202(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    goto/16 :goto_2

    .line 443
    :cond_14
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$pressureLongSwitchUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 444
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "nubia_pressure_long_switch"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_15

    move v1, v2

    nop

    :cond_15
    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$2302(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    goto/16 :goto_2

    .line 445
    :cond_16
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$headsUpUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 446
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dualscreen_screen_notification"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_17

    goto :goto_1

    :cond_17
    move v2, v1

    :goto_1
    invoke-static {v0, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$2402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 447
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$2400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 448
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$2502(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    goto :goto_2

    .line 450
    :cond_18
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$threefingerUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 451
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dualscreen_send_application"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_19

    move v1, v2

    nop

    :cond_19
    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$2602(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    goto :goto_2

    .line 452
    :cond_1a
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->val$dualscreenShortcutUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 453
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "nubia_dualscreen_shortcut_switch"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1b

    move v1, v2

    nop

    :cond_1b
    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$2702(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 455
    :cond_1c
    :goto_2
    return-void
.end method
