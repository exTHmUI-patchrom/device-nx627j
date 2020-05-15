.class public final synthetic Landroid/media/session/-$$Lambda$MediaSessionManager$SessionTokensChangedWrapper$1$wkYv3P0_Sdm0wRGnCFHp-AGf3Dw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper$1;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper$1;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/session/-$$Lambda$MediaSessionManager$SessionTokensChangedWrapper$1$wkYv3P0_Sdm0wRGnCFHp-AGf3Dw;->f$0:Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper$1;

    iput-object p2, p0, Landroid/media/session/-$$Lambda$MediaSessionManager$SessionTokensChangedWrapper$1$wkYv3P0_Sdm0wRGnCFHp-AGf3Dw;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/media/session/-$$Lambda$MediaSessionManager$SessionTokensChangedWrapper$1$wkYv3P0_Sdm0wRGnCFHp-AGf3Dw;->f$0:Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper$1;

    iget-object v1, p0, Landroid/media/session/-$$Lambda$MediaSessionManager$SessionTokensChangedWrapper$1$wkYv3P0_Sdm0wRGnCFHp-AGf3Dw;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper$1;->lambda$onSessionTokensChanged$0(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper$1;Ljava/util/List;)V

    return-void
.end method
