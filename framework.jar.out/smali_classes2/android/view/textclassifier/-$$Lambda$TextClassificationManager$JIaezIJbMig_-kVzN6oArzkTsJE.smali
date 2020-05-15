.class public final synthetic Landroid/view/textclassifier/-$$Lambda$TextClassificationManager$JIaezIJbMig_-kVzN6oArzkTsJE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/textclassifier/TextClassificationSessionFactory;


# instance fields
.field private final synthetic f$0:Landroid/view/textclassifier/TextClassificationManager;


# direct methods
.method public synthetic constructor <init>(Landroid/view/textclassifier/TextClassificationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/-$$Lambda$TextClassificationManager$JIaezIJbMig_-kVzN6oArzkTsJE;->f$0:Landroid/view/textclassifier/TextClassificationManager;

    return-void
.end method


# virtual methods
.method public final createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/-$$Lambda$TextClassificationManager$JIaezIJbMig_-kVzN6oArzkTsJE;->f$0:Landroid/view/textclassifier/TextClassificationManager;

    invoke-static {v0, p1}, Landroid/view/textclassifier/TextClassificationManager;->lambda$new$0(Landroid/view/textclassifier/TextClassificationManager;Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;

    move-result-object p1

    return-object p1
.end method
