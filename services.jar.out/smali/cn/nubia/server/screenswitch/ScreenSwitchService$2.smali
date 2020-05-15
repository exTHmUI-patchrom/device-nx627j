.class Lcn/nubia/server/screenswitch/ScreenSwitchService$2;
.super Landroid/database/ContentObserver;
.source "ScreenSwitchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchService;->registerSettingsOberser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

.field final synthetic val$donotRemindUri:Landroid/net/Uri;

.field final synthetic val$enableInWizardUri:Landroid/net/Uri;

.field final synthetic val$floatUri:Landroid/net/Uri;

.field final synthetic val$multiTasksUri:Landroid/net/Uri;

.field final synthetic val$poweronUri:Landroid/net/Uri;

.field final synthetic val$settingUri:Landroid/net/Uri;

.field final synthetic val$showMainWhenCallUri:Landroid/net/Uri;

.field final synthetic val$switchModeUri:Landroid/net/Uri;

.field final synthetic val$videoUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;Landroid/os/Handler;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 276
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iput-object p3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->val$settingUri:Landroid/net/Uri;

    iput-object p4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->val$videoUri:Landroid/net/Uri;

    iput-object p5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->val$switchModeUri:Landroid/net/Uri;

    iput-object p6, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->val$floatUri:Landroid/net/Uri;

    iput-object p7, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->val$poweronUri:Landroid/net/Uri;

    iput-object p8, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->val$donotRemindUri:Landroid/net/Uri;

    iput-object p9, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->val$enableInWizardUri:Landroid/net/Uri;

    iput-object p10, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->val$multiTasksUri:Landroid/net/Uri;

    iput-object p11, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->val$showMainWhenCallUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 280
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->val$settingUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_switch_screen"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$402(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 283
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$600()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAutoSwitch changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$400(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$700(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    goto/16 :goto_0

    .line 285
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->val$videoUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 286
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "isVideoIncomingCall"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 287
    .local v0, "a":I
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$600()Z

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

    .line 288
    .end local v0    # "a":I
    :cond_3
    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->val$switchModeUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 289
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "switch_screen_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$802(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)I

    .line 291
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$600()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSwitchMode changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_5
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 293
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    .line 295
    :cond_6
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$700(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    .line 296
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/MotionDetector;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/MotionDetector;->setSwitchMode(I)V

    goto/16 :goto_0

    .line 297
    :cond_7
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->val$floatUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 298
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 299
    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "float_switch_screen"

    .line 298
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_8

    move v1, v2

    nop

    :cond_8
    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1102(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 301
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1100(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 302
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_switch_screen"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 305
    :cond_9
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$600()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsFloatSwitch changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1100(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_a
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$700(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    goto/16 :goto_0

    .line 307
    :cond_b
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->val$poweronUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 308
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "poweron_upturned_screen"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1202(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)I

    goto/16 :goto_0

    .line 309
    :cond_c
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->val$donotRemindUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 310
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/content/Context;

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
    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1302(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    goto/16 :goto_0

    .line 311
    :cond_e
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->val$enableInWizardUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 312
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/content/Context;

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
    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1402(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 313
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1400(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 314
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    goto :goto_0

    .line 316
    :cond_10
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->val$multiTasksUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 317
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/content/Context;

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
    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1502(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    goto :goto_0

    .line 318
    :cond_12
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->val$showMainWhenCallUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 319
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/content/Context;

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
    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1602(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 321
    :cond_14
    :goto_0
    return-void
.end method
