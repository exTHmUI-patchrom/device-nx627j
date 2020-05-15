.class Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener$1;
.super Ljava/lang/Object;
.source "PreLaunchController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;

    .line 520
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener$1;->this$1:Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 523
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener$1;->this$1:Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->access$1902(Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;Z)Z

    .line 524
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener$1;->this$1:Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener$1;->this$1:Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;

    iget-object v1, v1, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$2000(Lcn/nubia/server/appmgmt/PreLaunchController;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 525
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener$1;->this$1:Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->access$1902(Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;Z)Z

    .line 526
    return-void
.end method
