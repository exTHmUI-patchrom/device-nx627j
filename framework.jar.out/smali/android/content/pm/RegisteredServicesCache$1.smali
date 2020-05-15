.class Landroid/content/pm/RegisteredServicesCache$1;
.super Landroid/content/BroadcastReceiver;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/RegisteredServicesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/RegisteredServicesCache;


# direct methods
.method constructor <init>(Landroid/content/pm/RegisteredServicesCache;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/pm/RegisteredServicesCache;

    .line 211
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$1;, "Landroid/content/pm/RegisteredServicesCache$1;"
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache$1;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 214
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$1;, "Landroid/content/pm/RegisteredServicesCache$1;"
    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 215
    .local v0, "uid":I
    if-eq v0, v1, :cond_0

    .line 216
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache$1;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/RegisteredServicesCache;->handlePackageEvent(Landroid/content/Intent;I)V

    .line 218
    :cond_0
    return-void
.end method
