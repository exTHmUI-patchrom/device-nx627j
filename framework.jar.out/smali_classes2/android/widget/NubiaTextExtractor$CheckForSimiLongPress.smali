.class Landroid/widget/NubiaTextExtractor$CheckForSimiLongPress;
.super Ljava/lang/Object;
.source "NubiaTextExtractor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NubiaTextExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckForSimiLongPress"
.end annotation


# instance fields
.field mMotionEvent:Landroid/view/MotionEvent;

.field mNubiaTextExtractorWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/NubiaTextExtractor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/NubiaTextExtractor;)V
    .locals 1
    .param p1, "extractor"    # Landroid/widget/NubiaTextExtractor;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/NubiaTextExtractor$CheckForSimiLongPress;->mNubiaTextExtractorWeakReference:Ljava/lang/ref/WeakReference;

    .line 234
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 238
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor$CheckForSimiLongPress;->mNubiaTextExtractorWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/NubiaTextExtractor;

    .line 239
    .local v0, "nubiaTextExtractor":Landroid/widget/NubiaTextExtractor;
    invoke-static {v0}, Landroid/widget/NubiaTextExtractor;->access$100(Landroid/widget/NubiaTextExtractor;)V

    .line 240
    return-void
.end method
