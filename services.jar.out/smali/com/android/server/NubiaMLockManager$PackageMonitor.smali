.class Lcom/android/server/NubiaMLockManager$PackageMonitor;
.super Landroid/content/BroadcastReceiver;
.source "NubiaMLockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NubiaMLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NubiaMLockManager;


# direct methods
.method private constructor <init>(Lcom/android/server/NubiaMLockManager;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/android/server/NubiaMLockManager$PackageMonitor;->this$0:Lcom/android/server/NubiaMLockManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NubiaMLockManager;Lcom/android/server/NubiaMLockManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/NubiaMLockManager;
    .param p2, "x1"    # Lcom/android/server/NubiaMLockManager$1;

    .line 636
    invoke-direct {p0, p1}, Lcom/android/server/NubiaMLockManager$PackageMonitor;-><init>(Lcom/android/server/NubiaMLockManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 639
    if-nez p2, :cond_0

    return-void

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager$PackageMonitor;->this$0:Lcom/android/server/NubiaMLockManager;

    invoke-static {v0}, Lcom/android/server/NubiaMLockManager;->access$800(Lcom/android/server/NubiaMLockManager;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 642
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 645
    iget-object v2, p0, Lcom/android/server/NubiaMLockManager$PackageMonitor;->this$0:Lcom/android/server/NubiaMLockManager;

    invoke-static {v2, v1}, Lcom/android/server/NubiaMLockManager;->access$600(Lcom/android/server/NubiaMLockManager;Ljava/lang/String;)V

    goto :goto_0

    .line 646
    :cond_2
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 647
    iget-object v2, p0, Lcom/android/server/NubiaMLockManager$PackageMonitor;->this$0:Lcom/android/server/NubiaMLockManager;

    invoke-static {v2, v1}, Lcom/android/server/NubiaMLockManager;->access$900(Lcom/android/server/NubiaMLockManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 648
    iget-object v2, p0, Lcom/android/server/NubiaMLockManager$PackageMonitor;->this$0:Lcom/android/server/NubiaMLockManager;

    invoke-static {v2, v1}, Lcom/android/server/NubiaMLockManager;->access$1000(Lcom/android/server/NubiaMLockManager;Ljava/lang/String;)V

    .line 649
    iget-object v2, p0, Lcom/android/server/NubiaMLockManager$PackageMonitor;->this$0:Lcom/android/server/NubiaMLockManager;

    invoke-static {v2}, Lcom/android/server/NubiaMLockManager;->access$1100(Lcom/android/server/NubiaMLockManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 651
    :cond_3
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 652
    iget-object v2, p0, Lcom/android/server/NubiaMLockManager$PackageMonitor;->this$0:Lcom/android/server/NubiaMLockManager;

    invoke-static {v2, v1}, Lcom/android/server/NubiaMLockManager;->access$1200(Lcom/android/server/NubiaMLockManager;Ljava/lang/String;)V

    .line 653
    iget-object v2, p0, Lcom/android/server/NubiaMLockManager$PackageMonitor;->this$0:Lcom/android/server/NubiaMLockManager;

    invoke-static {v2}, Lcom/android/server/NubiaMLockManager;->access$1100(Lcom/android/server/NubiaMLockManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/server/NubiaMLockManager$PackageMonitor;->this$0:Lcom/android/server/NubiaMLockManager;

    invoke-static {v2}, Lcom/android/server/NubiaMLockManager;->access$100(Lcom/android/server/NubiaMLockManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "pkg":Ljava/lang/String;
    goto :goto_1

    :catch_0
    move-exception v0

    .line 657
    :goto_1
    return-void
.end method
