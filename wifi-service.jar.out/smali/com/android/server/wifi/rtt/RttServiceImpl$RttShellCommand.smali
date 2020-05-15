.class Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;
.super Landroid/os/ShellCommand;
.source "RttServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/rtt/RttServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RttShellCommand"
.end annotation


# instance fields
.field private mControlParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/rtt/RttServiceImpl;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 126
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;->mControlParams:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/rtt/RttServiceImpl;Lcom/android/server/wifi/rtt/RttServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/rtt/RttServiceImpl;
    .param p2, "x1"    # Lcom/android/server/wifi/rtt/RttServiceImpl$1;

    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;-><init>(Lcom/android/server/wifi/rtt/RttServiceImpl;)V

    return-void
.end method


# virtual methods
.method public getControlParam(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;->mControlParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;->mControlParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 199
    :cond_0
    const-string v0, "RttServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getControlParam for unknown variable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 8
    .param p1, "cmd"    # Ljava/lang/String;

    .line 130
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 131
    .local v0, "uid":I
    if-nez v0, :cond_5

    .line 136
    invoke-virtual {p0}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 138
    .local v1, "pw":Ljava/io/PrintWriter;
    const/4 v2, -0x1

    :try_start_0
    const-string v3, "reset"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;->reset()V

    .line 140
    return v4

    .line 141
    :cond_0
    const-string v3, "get"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;->mControlParams:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown parameter name -- \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    return v2

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;->mControlParams:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 148
    return v4

    .line 149
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    const-string v3, "set"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 150
    invoke-virtual {p0}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 151
    .restart local v3    # "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "valueStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;->mControlParams:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown parameter name -- \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    return v2

    .line 159
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;->mControlParams:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    return v4

    .line 161
    :catch_0
    move-exception v4

    .line 162
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t convert value to integer -- \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    return v2

    .line 166
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "valueStr":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 170
    goto :goto_0

    .line 168
    :catch_1
    move-exception v3

    .line 169
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    return v2

    .line 132
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_5
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not have access to wifirtt commands"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onHelp()V
    .locals 5

    .line 176
    invoke-virtual {p0}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 178
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Wi-Fi RTT (wifirt) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    const-string v1, "  reset"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    const-string v1, "    Reset parameters to default values."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    const-string v1, "  get <name>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    const-string v1, "    Get the value of the control parameter."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    const-string v1, "  set <name> <value>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    const-string v1, "    Set the value of the control parameter."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    const-string v1, "  Control parameters:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;->mControlParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 189
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 192
    return-void
.end method

.method public reset()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttShellCommand;->mControlParams:Ljava/util/Map;

    const-string v1, "override_assume_no_privilege"

    .line 205
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 204
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method
