.class Landroid/widget/NubiaTextExtractor$SmartRecognitionObserver;
.super Landroid/database/ContentObserver;
.source "NubiaTextExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NubiaTextExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartRecognitionObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NubiaTextExtractor;


# direct methods
.method public constructor <init>(Landroid/widget/NubiaTextExtractor;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 291
    iput-object p1, p0, Landroid/widget/NubiaTextExtractor$SmartRecognitionObserver;->this$0:Landroid/widget/NubiaTextExtractor;

    .line 292
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 294
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 297
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 298
    new-instance v0, Landroid/widget/NubiaTextExtractor$SmartRecognitionObserver$1;

    invoke-direct {v0, p0}, Landroid/widget/NubiaTextExtractor$SmartRecognitionObserver$1;-><init>(Landroid/widget/NubiaTextExtractor$SmartRecognitionObserver;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 305
    invoke-virtual {v0, v1}, Landroid/widget/NubiaTextExtractor$SmartRecognitionObserver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 306
    return-void
.end method
