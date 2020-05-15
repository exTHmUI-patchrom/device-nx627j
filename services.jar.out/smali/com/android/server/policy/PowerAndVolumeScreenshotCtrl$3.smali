.class Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$3;
.super Ljava/lang/Object;
.source "PowerAndVolumeScreenshotCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    .line 107
    iput-object p1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$3;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 109
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$3;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    invoke-static {v0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->access$700(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const-string/jumbo v0, "supersnapshot"

    const-string v1, "about to enter super snapshot"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cn.nubia.action.supersnap.takescreenshot"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v1, "enterPattern"

    const-string/jumbo v2, "powerAndVolumeService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v1, "cn.nubia.supersnap"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$3;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    invoke-static {v1}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->access$800(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "supersnapshot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured while trying to start super snapshot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "1"

    const-string/jumbo v2, "persist.sys.systrace.enable"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$3;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    invoke-virtual {v1}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->reflectDumpSystrace()V

    .line 126
    :cond_0
    const-string v1, "1"

    const-string/jumbo v2, "persist.sys.dumpsys.enable"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$3;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    invoke-static {v1}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->access$900(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)V

    .line 130
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
