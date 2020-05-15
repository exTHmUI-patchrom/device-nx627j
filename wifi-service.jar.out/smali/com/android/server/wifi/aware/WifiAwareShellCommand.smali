.class public Lcom/android/server/wifi/aware/WifiAwareShellCommand;
.super Landroid/os/ShellCommand;
.source "WifiAwareShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiAwareShellCommand"


# instance fields
.field private mDelegatedCommands:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareShellCommand;->mDelegatedCommands:Ljava/util/Map;

    return-void
.end method

.method private checkRootPermission()V
    .locals 4

    .line 78
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 79
    .local v0, "uid":I
    if-nez v0, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not have access to wifiaware commands"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareShellCommand;->checkRootPermission()V

    .line 52
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 54
    .local v0, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string v1, "reset"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareShellCommand;->mDelegatedCommands:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;

    .line 56
    .local v2, "dsc":Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;
    invoke-interface {v2}, Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;->onReset()V

    .line 57
    .end local v2    # "dsc":Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;
    goto :goto_0

    .line 58
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 60
    :cond_1
    const/4 v1, 0x0

    .line 61
    .local v1, "delegatedCmd":Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 62
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareShellCommand;->mDelegatedCommands:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;

    move-object v1, v2

    .line 65
    :cond_2
    if-eqz v1, :cond_3

    .line 66
    invoke-interface {v1, p0}, Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;->onCommand(Landroid/os/ShellCommand;)I

    move-result v2

    return v2

    .line 68
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 71
    .end local v1    # "delegatedCmd":Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    return v1
.end method

.method public onHelp()V
    .locals 5

    .line 88
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 90
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Wi-Fi Aware (wifiaware) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v1, "  reset"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string v1, "    Reset parameters to default values."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareShellCommand;->mDelegatedCommands:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 96
    .local v2, "sce":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4, p0}, Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;->onHelp(Ljava/lang/String;Landroid/os/ShellCommand;)V

    .line 97
    .end local v2    # "sce":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;>;"
    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 99
    return-void
.end method

.method public register(Ljava/lang/String;Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "shellCommand"    # Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;

    .line 41
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareShellCommand;->mDelegatedCommands:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "WifiAwareShellCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register: overwriting existing command -- \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareShellCommand;->mDelegatedCommands:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method
