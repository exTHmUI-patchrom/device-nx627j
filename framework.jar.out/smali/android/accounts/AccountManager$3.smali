.class Landroid/accounts/AccountManager$3;
.super Landroid/accounts/AccountManager$Future2Task;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/AccountManager$Future2Task<",
        "[",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$features:[Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 838
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$3;->this$0:Landroid/accounts/AccountManager;

    iput-object p4, p0, Landroid/accounts/AccountManager$3;->val$type:Ljava/lang/String;

    iput-object p5, p0, Landroid/accounts/AccountManager$3;->val$features:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManager$Future2Task;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bundleToResult(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .line 838
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$3;->bundleToResult(Landroid/os/Bundle;)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1
.end method

.method public bundleToResult(Landroid/os/Bundle;)[Landroid/accounts/Account;
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .line 847
    const-string v0, "accounts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    const-string v0, "accounts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 851
    .local v0, "parcelables":[Landroid/os/Parcelable;
    array-length v1, v0

    new-array v1, v1, [Landroid/accounts/Account;

    .line 852
    .local v1, "descs":[Landroid/accounts/Account;
    const/4 v2, 0x0

    .line 852
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 853
    aget-object v3, v0, v2

    check-cast v3, Landroid/accounts/Account;

    aput-object v3, v1, v2

    .line 852
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 855
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 848
    .end local v0    # "parcelables":[Landroid/os/Parcelable;
    .end local v1    # "descs":[Landroid/accounts/Account;
    :cond_1
    new-instance v0, Landroid/accounts/AuthenticatorException;

    const-string/jumbo v1, "no result in response"

    invoke-direct {v0, v1}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doWork()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 841
    const/16 v0, 0x1f

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 842
    iget-object v0, p0, Landroid/accounts/AccountManager$3;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v0}, Landroid/accounts/AccountManager;->access$000(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AccountManager$3;->mResponse:Landroid/accounts/IAccountManagerResponse;

    iget-object v2, p0, Landroid/accounts/AccountManager$3;->val$type:Ljava/lang/String;

    iget-object v3, p0, Landroid/accounts/AccountManager$3;->val$features:[Ljava/lang/String;

    iget-object v4, p0, Landroid/accounts/AccountManager$3;->this$0:Landroid/accounts/AccountManager;

    .line 843
    invoke-static {v4}, Landroid/accounts/AccountManager;->access$100(Landroid/accounts/AccountManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 842
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/accounts/IAccountManager;->getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    return-void
.end method
