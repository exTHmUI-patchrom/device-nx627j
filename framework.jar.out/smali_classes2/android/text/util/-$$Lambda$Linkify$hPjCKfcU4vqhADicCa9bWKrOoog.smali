.class public final synthetic Landroid/text/util/-$$Lambda$Linkify$hPjCKfcU4vqhADicCa9bWKrOoog;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Landroid/view/textclassifier/TextClassifier;

.field private final synthetic f$1:Landroid/view/textclassifier/TextLinks$Request;


# direct methods
.method public synthetic constructor <init>(Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinks$Request;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/util/-$$Lambda$Linkify$hPjCKfcU4vqhADicCa9bWKrOoog;->f$0:Landroid/view/textclassifier/TextClassifier;

    iput-object p2, p0, Landroid/text/util/-$$Lambda$Linkify$hPjCKfcU4vqhADicCa9bWKrOoog;->f$1:Landroid/view/textclassifier/TextLinks$Request;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/text/util/-$$Lambda$Linkify$hPjCKfcU4vqhADicCa9bWKrOoog;->f$0:Landroid/view/textclassifier/TextClassifier;

    iget-object v1, p0, Landroid/text/util/-$$Lambda$Linkify$hPjCKfcU4vqhADicCa9bWKrOoog;->f$1:Landroid/view/textclassifier/TextLinks$Request;

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->lambda$addLinksAsync$1(Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0
.end method
