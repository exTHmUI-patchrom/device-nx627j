.class Lnubia/os/presssensor/PressSensorManager$RankListenerWrapper;
.super Lnubia/os/presssensor/IRankListener$Stub;
.source "PressSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/presssensor/PressSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RankListenerWrapper"
.end annotation


# instance fields
.field private mRankListener:Lnubia/os/presssensor/PressSensorManager$RankListener;


# direct methods
.method public constructor <init>(Lnubia/os/presssensor/PressSensorManager$RankListener;)V
    .locals 0
    .param p1, "listener"    # Lnubia/os/presssensor/PressSensorManager$RankListener;

    .line 181
    invoke-direct {p0}, Lnubia/os/presssensor/IRankListener$Stub;-><init>()V

    .line 182
    iput-object p1, p0, Lnubia/os/presssensor/PressSensorManager$RankListenerWrapper;->mRankListener:Lnubia/os/presssensor/PressSensorManager$RankListener;

    .line 183
    return-void
.end method


# virtual methods
.method public onRankChanged(I)V
    .locals 1
    .param p1, "rank"    # I

    .line 187
    iget-object v0, p0, Lnubia/os/presssensor/PressSensorManager$RankListenerWrapper;->mRankListener:Lnubia/os/presssensor/PressSensorManager$RankListener;

    invoke-interface {v0, p1}, Lnubia/os/presssensor/PressSensorManager$RankListener;->onRankChanged(I)V

    .line 188
    return-void
.end method
