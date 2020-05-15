.class public abstract Lcn/nubia/server/screenswitch/SwitchInterface;
.super Ljava/lang/Object;
.source "SwitchInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/screenswitch/SwitchInterface$EmptyImpl;,
        Lcn/nubia/server/screenswitch/SwitchInterface$Callback;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "SwitchInterface"


# instance fields
.field private mCallback:Lcn/nubia/server/screenswitch/SwitchInterface$Callback;

.field protected mContext:Landroid/content/Context;

.field protected mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/SwitchInterface;->mCallback:Lcn/nubia/server/screenswitch/SwitchInterface$Callback;

    .line 21
    iput-object p1, p0, Lcn/nubia/server/screenswitch/SwitchInterface;->mContext:Landroid/content/Context;

    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/SwitchInterface;->mToken:Landroid/os/IBinder;

    .line 23
    return-void
.end method

.method static createInstance(Landroid/content/Context;)Lcn/nubia/server/screenswitch/SwitchInterface;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 76
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "NX616"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lcn/nubia/server/screenswitch/SwitchImplFor616;

    invoke-direct {v0, p0}, Lcn/nubia/server/screenswitch/SwitchImplFor616;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 78
    :cond_0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "NX627"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    new-instance v0, Lcn/nubia/server/screenswitch/SwitchImplFor627;

    invoke-direct {v0, p0}, Lcn/nubia/server/screenswitch/SwitchImplFor627;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 81
    :cond_1
    new-instance v0, Lcn/nubia/server/screenswitch/SwitchInterface$EmptyImpl;

    invoke-direct {v0, p0}, Lcn/nubia/server/screenswitch/SwitchInterface$EmptyImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method createRealTarget(I)I
    .locals 2
    .param p1, "target"    # I

    .line 57
    rem-int/lit8 v0, p1, 0x3

    .line 58
    .local v0, "t":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/server/screenswitch/SwitchInterface;->getDisplayId()I

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 64
    return-void
.end method

.method abstract execImpl(I)Z
.end method

.method public execSwitch(I)Z
    .locals 1
    .param p1, "target"    # I

    .line 69
    invoke-virtual {p0, p1}, Lcn/nubia/server/screenswitch/SwitchInterface;->execImpl(I)Z

    move-result v0

    .line 70
    .local v0, "res":Z
    invoke-virtual {p0, p1}, Lcn/nubia/server/screenswitch/SwitchInterface;->readLcdState(I)V

    .line 71
    return v0
.end method

.method getCurrentLCDState()I
    .locals 6

    .line 26
    invoke-virtual {p0}, Lcn/nubia/server/screenswitch/SwitchInterface;->lcdStateFile()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "file":Ljava/lang/String;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 28
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcn/nubia/server/screenswitch/SwitchInterface;->lcdStateFile()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 29
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 30
    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 31
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 31
    return v5

    .line 33
    .end local v4    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 35
    .end local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 33
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 28
    :catch_0
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    :goto_0
    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v5

    :try_start_5
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :goto_1
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .end local v2    # "br":Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    .line 34
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SwitchInterface"

    const-string v4, "getCurrentLCDState error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return v1
.end method

.method abstract getDisplayId()I
.end method

.method abstract lcdStateFile()Ljava/lang/String;
.end method

.method abstract needSwitch(I)Z
.end method

.method protected noteAsycPowerOffState(ZZ)V
    .locals 1
    .param p1, "isFront"    # Z
    .param p2, "isStart"    # Z

    .line 90
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchInterface;->mCallback:Lcn/nubia/server/screenswitch/SwitchInterface$Callback;

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchInterface;->mCallback:Lcn/nubia/server/screenswitch/SwitchInterface$Callback;

    invoke-interface {v0, p1, p2}, Lcn/nubia/server/screenswitch/SwitchInterface$Callback;->noteAsycPowerOffState(ZZ)V

    .line 92
    return-void
.end method

.method readLcdState(I)V
    .locals 5
    .param p1, "target"    # I

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "time":I
    invoke-virtual {p0, p1}, Lcn/nubia/server/screenswitch/SwitchInterface;->updateTarget(I)I

    move-result v1

    .line 42
    .local v1, "real":I
    :goto_0
    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-ge v0, v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 43
    invoke-virtual {p0}, Lcn/nubia/server/screenswitch/SwitchInterface;->getCurrentLCDState()I

    move-result v2

    if-ne v1, v2, :cond_1

    goto :goto_3

    .line 44
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 46
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_2
    goto :goto_0

    .line 47
    :catch_0
    move-exception v2

    .line 48
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "SwitchInterface"

    const-string/jumbo v4, "readLcdState error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 51
    :cond_2
    :goto_3
    return-void
.end method

.method setCallback(Lcn/nubia/server/screenswitch/SwitchInterface$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcn/nubia/server/screenswitch/SwitchInterface$Callback;

    .line 86
    iput-object p1, p0, Lcn/nubia/server/screenswitch/SwitchInterface;->mCallback:Lcn/nubia/server/screenswitch/SwitchInterface$Callback;

    .line 87
    return-void
.end method

.method systemReady()V
    .locals 0

    .line 66
    return-void
.end method

.method updateTarget(I)I
    .locals 0
    .param p1, "target"    # I

    .line 53
    return p1
.end method
