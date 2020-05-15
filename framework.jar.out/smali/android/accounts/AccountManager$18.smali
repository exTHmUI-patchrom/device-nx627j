.class Landroid/accounts/AccountManager$18;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->postToHandler(Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$accountsCopy:[Landroid/accounts/Account;

.field final synthetic val$listener:Landroid/accounts/OnAccountsUpdateListener;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/AccountManager;

    .line 2221
    iput-object p1, p0, Landroid/accounts/AccountManager$18;->this$0:Landroid/accounts/AccountManager;

    iput-object p2, p0, Landroid/accounts/AccountManager$18;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    iput-object p3, p0, Landroid/accounts/AccountManager$18;->val$accountsCopy:[Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2224
    iget-object v0, p0, Landroid/accounts/AccountManager$18;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v0}, Landroid/accounts/AccountManager;->access$200(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 2226
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager$18;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v1}, Landroid/accounts/AccountManager;->access$200(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Landroid/accounts/AccountManager$18;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2227
    iget-object v1, p0, Landroid/accounts/AccountManager$18;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v1}, Landroid/accounts/AccountManager;->access$300(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Landroid/accounts/AccountManager$18;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 2228
    .local v1, "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 2230
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2231
    .local v2, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    iget-object v3, p0, Landroid/accounts/AccountManager$18;->val$accountsCopy:[Landroid/accounts/Account;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 2232
    .local v6, "account":Landroid/accounts/Account;
    iget-object v7, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2233
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2231
    .end local v6    # "account":Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2236
    :cond_1
    iget-object v3, p0, Landroid/accounts/AccountManager$18;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    .line 2237
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/accounts/Account;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/accounts/Account;

    .line 2236
    invoke-interface {v3, v4}, Landroid/accounts/OnAccountsUpdateListener;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 2238
    .end local v2    # "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    goto :goto_1

    .line 2239
    :cond_2
    iget-object v2, p0, Landroid/accounts/AccountManager$18;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    iget-object v3, p0, Landroid/accounts/AccountManager$18;->val$accountsCopy:[Landroid/accounts/Account;

    invoke-interface {v2, v3}, Landroid/accounts/OnAccountsUpdateListener;->onAccountsUpdated([Landroid/accounts/Account;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2246
    .end local v1    # "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    goto :goto_2

    .line 2247
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 2242
    :catch_0
    move-exception v1

    .line 2245
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v2, "AccountManager"

    const-string v3, "Can\'t update accounts"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2247
    .end local v1    # "e":Landroid/database/SQLException;
    :goto_2
    monitor-exit v0

    .line 2248
    return-void

    .line 2247
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
