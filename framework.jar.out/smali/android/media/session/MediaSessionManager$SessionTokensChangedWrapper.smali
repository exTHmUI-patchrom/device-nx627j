.class final Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SessionTokensChangedWrapper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mListener:Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;

.field private final mStub:Landroid/media/ISessionTokensListener$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;

    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 958
    new-instance v0, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper$1;

    invoke-direct {v0, p0}, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper$1;-><init>(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;)V

    iput-object v0, p0, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->mStub:Landroid/media/ISessionTokensListener$Stub;

    .line 953
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->mContext:Landroid/content/Context;

    .line 954
    iput-object p2, p0, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 955
    iput-object p3, p0, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->mListener:Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;

    .line 956
    return-void
.end method

.method static synthetic access$200(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;)Landroid/media/ISessionTokensListener$Stub;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;

    .line 946
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->mStub:Landroid/media/ISessionTokensListener$Stub;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;

    .line 946
    invoke-direct {p0}, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->release()V

    return-void
.end method

.method static synthetic access$700(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;

    .line 946
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$800(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;

    .line 946
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;)Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;

    .line 946
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->mListener:Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;

    return-object v0
.end method

.method private release()V
    .locals 1

    .line 975
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->mListener:Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;

    .line 976
    iput-object v0, p0, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->mContext:Landroid/content/Context;

    .line 977
    iput-object v0, p0, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 978
    return-void
.end method
