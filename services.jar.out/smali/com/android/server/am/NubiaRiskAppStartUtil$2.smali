.class Lcom/android/server/am/NubiaRiskAppStartUtil$2;
.super Ljava/lang/Object;
.source "NubiaRiskAppStartUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/NubiaRiskAppStartUtil;->checkRiskAndShowDialog(Landroid/content/pm/ApplicationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/NubiaRiskAppStartUtil;

.field final synthetic val$info:Landroid/content/pm/ApplicationInfo;


# direct methods
.method constructor <init>(Lcom/android/server/am/NubiaRiskAppStartUtil;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/NubiaRiskAppStartUtil;

    .line 127
    iput-object p1, p0, Lcom/android/server/am/NubiaRiskAppStartUtil$2;->this$0:Lcom/android/server/am/NubiaRiskAppStartUtil;

    iput-object p2, p0, Lcom/android/server/am/NubiaRiskAppStartUtil$2;->val$info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil$2;->this$0:Lcom/android/server/am/NubiaRiskAppStartUtil;

    iget-object v1, p0, Lcom/android/server/am/NubiaRiskAppStartUtil$2;->val$info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v1}, Lcom/android/server/am/NubiaRiskAppStartUtil;->access$100(Lcom/android/server/am/NubiaRiskAppStartUtil;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.packageinstaller.RISK_APP_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.packageinstaller"

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "package"

    iget-object v2, p0, Lcom/android/server/am/NubiaRiskAppStartUtil$2;->val$info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/am/NubiaRiskAppStartUtil$2;->this$0:Lcom/android/server/am/NubiaRiskAppStartUtil;

    invoke-static {v1}, Lcom/android/server/am/NubiaRiskAppStartUtil;->access$200(Lcom/android/server/am/NubiaRiskAppStartUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NubiaRiskAppStartUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRiskAndShow error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
