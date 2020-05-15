.class Lcom/android/server/am/ActivityManagerShellCommand$1;
.super Ljava/lang/Object;
.source "ActivityManagerShellCommand.java"

# interfaces
.implements Landroid/content/Intent$CommandOptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerShellCommand;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerShellCommand;

    .line 306
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z
    .locals 4
    .param p1, "opt"    # Ljava/lang/String;
    .param p2, "cmd"    # Landroid/os/ShellCommand;

    .line 309
    const-string v0, "-D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$076(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_0

    .line 311
    :cond_0
    const-string v0, "-N"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$076(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_0

    .line 313
    :cond_1
    const-string v0, "-W"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$102(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_0

    .line 315
    :cond_2
    const-string v0, "-P"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$202(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$302(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_0

    .line 318
    :cond_3
    const-string v0, "--start-profiler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 319
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->access$202(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$302(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_0

    .line 321
    :cond_4
    const-string v0, "--sampling"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 322
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$402(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_0

    .line 323
    :cond_5
    const-string v0, "--streaming"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 324
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$502(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_0

    .line 325
    :cond_6
    const-string v0, "--attach-agent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 326
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->access$600(Lcom/android/server/am/ActivityManagerShellCommand;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 327
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Multiple --attach-agent(-bind) not supported"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    return v2

    .line 331
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->access$602(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$702(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_0

    .line 333
    :cond_8
    const-string v0, "--attach-agent-bind"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 334
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->access$600(Lcom/android/server/am/ActivityManagerShellCommand;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 335
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Multiple --attach-agent(-bind) not supported"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    return v2

    .line 339
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$602(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$702(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_0

    .line 341
    :cond_a
    const-string v0, "-R"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 342
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$802(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_0

    .line 343
    :cond_b
    const-string v0, "-S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 344
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$902(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_0

    .line 345
    :cond_c
    const-string v0, "--track-allocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 346
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$076(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_0

    .line 347
    :cond_d
    const-string v0, "--user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 348
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1002(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_0

    .line 349
    :cond_e
    const-string v0, "--receiver-permission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 350
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1102(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 351
    :cond_f
    const-string v0, "--display"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 352
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1202(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto :goto_0

    .line 353
    :cond_10
    const-string v0, "--windowingMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 354
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1302(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto :goto_0

    .line 355
    :cond_11
    const-string v0, "--activityType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 356
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1402(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto :goto_0

    .line 357
    :cond_12
    const-string v0, "--task"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 358
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1502(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto :goto_0

    .line 359
    :cond_13
    const-string v0, "--task-overlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 360
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1602(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto :goto_0

    .line 361
    :cond_14
    const-string v0, "--lock-task"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 362
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1702(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    .line 366
    :goto_0
    return v1

    .line 364
    :cond_15
    return v2
.end method
