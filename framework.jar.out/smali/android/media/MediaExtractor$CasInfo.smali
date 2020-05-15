.class public final Landroid/media/MediaExtractor$CasInfo;
.super Ljava/lang/Object;
.source "MediaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CasInfo"
.end annotation


# instance fields
.field private final mSession:Landroid/media/MediaCas$Session;

.field private final mSystemId:I


# direct methods
.method constructor <init>(ILandroid/media/MediaCas$Session;)V
    .locals 0
    .param p1, "systemId"    # I
    .param p2, "session"    # Landroid/media/MediaCas$Session;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput p1, p0, Landroid/media/MediaExtractor$CasInfo;->mSystemId:I

    .line 278
    iput-object p2, p0, Landroid/media/MediaExtractor$CasInfo;->mSession:Landroid/media/MediaCas$Session;

    .line 279
    return-void
.end method


# virtual methods
.method public getSession()Landroid/media/MediaCas$Session;
    .locals 1

    .line 300
    iget-object v0, p0, Landroid/media/MediaExtractor$CasInfo;->mSession:Landroid/media/MediaCas$Session;

    return-object v0
.end method

.method public getSystemId()I
    .locals 1

    .line 287
    iget v0, p0, Landroid/media/MediaExtractor$CasInfo;->mSystemId:I

    return v0
.end method
