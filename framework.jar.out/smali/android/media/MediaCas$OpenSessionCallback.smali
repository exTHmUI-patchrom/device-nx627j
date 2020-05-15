.class Landroid/media/MediaCas$OpenSessionCallback;
.super Ljava/lang/Object;
.source "MediaCas.java"

# interfaces
.implements Landroid/hardware/cas/V1_0/ICas$openSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenSessionCallback"
.end annotation


# instance fields
.field public mSession:Landroid/media/MediaCas$Session;

.field public mStatus:I

.field final synthetic this$0:Landroid/media/MediaCas;


# direct methods
.method private constructor <init>(Landroid/media/MediaCas;)V
    .locals 0

    .line 451
    iput-object p1, p0, Landroid/media/MediaCas$OpenSessionCallback;->this$0:Landroid/media/MediaCas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCas;Landroid/media/MediaCas$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/MediaCas;
    .param p2, "x1"    # Landroid/media/MediaCas$1;

    .line 451
    invoke-direct {p0, p1}, Landroid/media/MediaCas$OpenSessionCallback;-><init>(Landroid/media/MediaCas;)V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 456
    .local p2, "sessionId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iput p1, p0, Landroid/media/MediaCas$OpenSessionCallback;->mStatus:I

    .line 457
    iget-object v0, p0, Landroid/media/MediaCas$OpenSessionCallback;->this$0:Landroid/media/MediaCas;

    invoke-virtual {v0, p2}, Landroid/media/MediaCas;->createFromSessionId(Ljava/util/ArrayList;)Landroid/media/MediaCas$Session;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCas$OpenSessionCallback;->mSession:Landroid/media/MediaCas$Session;

    .line 458
    return-void
.end method
