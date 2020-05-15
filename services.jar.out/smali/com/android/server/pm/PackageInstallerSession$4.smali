.class Lcom/android/server/pm/PackageInstallerSession$4;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;

.field final synthetic val$fillIn:Landroid/content/Intent;

.field final synthetic val$usbStatusReceiver:Landroid/content/IntentSender;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 984
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$4;->val$usbStatusReceiver:Landroid/content/IntentSender;

    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerSession$4;->val$fillIn:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 988
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$4;->val$usbStatusReceiver:Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->access$600(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$4;->val$fillIn:Landroid/content/Intent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    goto :goto_0

    .line 989
    :catch_0
    move-exception v0

    .line 991
    :goto_0
    return-void
.end method
