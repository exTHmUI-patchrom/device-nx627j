.class Landroid/widget/NubiaTextExtractor$SmartRecognitionObserver$1;
.super Landroid/os/AsyncTask;
.source "NubiaTextExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NubiaTextExtractor$SmartRecognitionObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/NubiaTextExtractor$SmartRecognitionObserver;


# direct methods
.method constructor <init>(Landroid/widget/NubiaTextExtractor$SmartRecognitionObserver;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/NubiaTextExtractor$SmartRecognitionObserver;

    .line 298
    iput-object p1, p0, Landroid/widget/NubiaTextExtractor$SmartRecognitionObserver$1;->this$1:Landroid/widget/NubiaTextExtractor$SmartRecognitionObserver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 298
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/widget/NubiaTextExtractor$SmartRecognitionObserver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;

    .line 302
    iget-object v0, p0, Landroid/widget/NubiaTextExtractor$SmartRecognitionObserver$1;->this$1:Landroid/widget/NubiaTextExtractor$SmartRecognitionObserver;

    iget-object v0, v0, Landroid/widget/NubiaTextExtractor$SmartRecognitionObserver;->this$0:Landroid/widget/NubiaTextExtractor;

    invoke-static {v0}, Landroid/widget/NubiaTextExtractor;->access$000(Landroid/widget/NubiaTextExtractor;)V

    .line 303
    const/4 v0, 0x0

    return-object v0
.end method
