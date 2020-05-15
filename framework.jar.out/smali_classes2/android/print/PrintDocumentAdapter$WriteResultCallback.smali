.class public abstract Landroid/print/PrintDocumentAdapter$WriteResultCallback;
.super Ljava/lang/Object;
.source "PrintDocumentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintDocumentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WriteResultCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    return-void
.end method


# virtual methods
.method public onWriteCancelled()V
    .locals 0

    .line 294
    return-void
.end method

.method public onWriteFailed(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/CharSequence;

    .line 287
    return-void
.end method

.method public onWriteFinished([Landroid/print/PageRange;)V
    .locals 0
    .param p1, "pages"    # [Landroid/print/PageRange;

    .line 277
    return-void
.end method
