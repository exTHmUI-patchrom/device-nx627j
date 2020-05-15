.class final Lcn/nubia/server/colorfullight/ColorfulLightService$BinderService;
.super Lnubia/hardware/IColorfulLightManager$Stub;
.source "ColorfulLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/colorfullight/ColorfulLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;


# direct methods
.method private constructor <init>(Lcn/nubia/server/colorfullight/ColorfulLightService;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$BinderService;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-direct {p0}, Lnubia/hardware/IColorfulLightManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/colorfullight/ColorfulLightService;Lcn/nubia/server/colorfullight/ColorfulLightService$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightService;
    .param p2, "x1"    # Lcn/nubia/server/colorfullight/ColorfulLightService$1;

    .line 548
    invoke-direct {p0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightService$BinderService;-><init>(Lcn/nubia/server/colorfullight/ColorfulLightService;)V

    return-void
.end method


# virtual methods
.method public copyColorfulLightData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .line 556
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_e

    .line 561
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 562
    .local v0, "srcFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 563
    invoke-static {}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[ColorfulLight] Source file does not exist!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return v1

    .line 567
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 568
    .local v2, "destFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 569
    .local v3, "suffix":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$1600()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, ".bin"

    .line 570
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_d

    .line 576
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 577
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 578
    const/16 v4, 0x1b6

    const/4 v5, -0x1

    invoke-static {v2, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 586
    nop

    .line 588
    const/4 v4, 0x0

    .line 589
    .local v4, "inputStream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 591
    .local v5, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v6

    .line 592
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v5, v6

    .line 593
    const/16 v6, 0x400

    new-array v6, v6, [B

    .line 595
    .local v6, "buffer":[B
    :goto_0
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "byteReads":I
    if-lez v7, :cond_4

    .line 596
    invoke-virtual {v5, v6, v1, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 598
    :cond_4
    const/4 v1, 0x1

    .line 603
    nop

    .line 604
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 610
    :catch_0
    move-exception v7

    goto :goto_2

    .line 607
    :goto_1
    nop

    .line 608
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 610
    :goto_2
    nop

    .line 611
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .end local v7    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 612
    :goto_3
    nop

    .line 598
    :goto_4
    return v1

    .line 602
    .end local v6    # "buffer":[B
    .end local v8    # "byteReads":I
    :catchall_0
    move-exception v1

    goto :goto_9

    .line 599
    :catch_1
    move-exception v6

    .line 600
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 603
    .end local v6    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_5

    .line 604
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_5

    .line 610
    :catch_2
    move-exception v6

    goto :goto_6

    .line 607
    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    .line 608
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    .line 610
    :goto_6
    nop

    .line 611
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 613
    .end local v6    # "e":Ljava/lang/Exception;
    goto :goto_8

    .line 612
    :cond_6
    :goto_7
    nop

    .line 614
    :goto_8
    return v1

    .line 602
    :goto_9
    nop

    .line 603
    if-eqz v4, :cond_7

    .line 604
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_a

    .line 610
    :catch_3
    move-exception v6

    goto :goto_b

    .line 607
    :cond_7
    :goto_a
    if-eqz v5, :cond_8

    .line 608
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_c

    .line 610
    :goto_b
    nop

    .line 611
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .end local v6    # "e":Ljava/lang/Exception;
    nop

    .line 612
    :cond_8
    :goto_c
    throw v1

    .line 580
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    :cond_9
    :try_start_6
    invoke-static {}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[ColorfulLight] Can not create target file!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 581
    return v1

    .line 583
    :catch_4
    move-exception v4

    .line 584
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 585
    return v1

    .line 571
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_d
    invoke-static {}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ColorfulLight] Destination file path format error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return v1

    .line 557
    .end local v0    # "srcFile":Ljava/io/File;
    .end local v2    # "destFile":Ljava/io/File;
    .end local v3    # "suffix":Ljava/lang/String;
    :cond_b
    :goto_e
    invoke-static {}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[ColorfulLight] Source file or Destination file name is null."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 619
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$BinderService;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$1700(Lcn/nubia/server/colorfullight/ColorfulLightService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 621
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$BinderService;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-static {v0, p2}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$1800(Lcn/nubia/server/colorfullight/ColorfulLightService;Ljava/io/PrintWriter;)V

    .line 622
    return-void
.end method

.method public requestColorfulLight(I)Z
    .locals 1
    .param p1, "known"    # I

    .line 551
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$BinderService;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-static {v0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$1500(Lcn/nubia/server/colorfullight/ColorfulLightService;I)Z

    move-result v0

    return v0
.end method
