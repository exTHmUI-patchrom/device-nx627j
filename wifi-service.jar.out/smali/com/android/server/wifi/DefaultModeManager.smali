.class public Lcom/android/server/wifi/DefaultModeManager;
.super Ljava/lang/Object;
.source "DefaultModeManager.java"

# interfaces
.implements Lcom/android/server/wifi/ActiveModeManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiDefaultModeManager"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/wifi/DefaultModeManager;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 49
    return-void
.end method

.method public start()V
    .locals 0

    .line 39
    return-void
.end method

.method public stop()V
    .locals 0

    .line 44
    return-void
.end method
