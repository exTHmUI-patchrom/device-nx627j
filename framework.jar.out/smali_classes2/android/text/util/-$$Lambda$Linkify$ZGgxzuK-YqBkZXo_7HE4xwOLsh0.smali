.class public final synthetic Landroid/text/util/-$$Lambda$Linkify$ZGgxzuK-YqBkZXo_7HE4xwOLsh0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Consumer;

.field private final synthetic f$1:Landroid/text/Spannable;

.field private final synthetic f$2:Ljava/lang/CharSequence;

.field private final synthetic f$3:Landroid/view/textclassifier/TextLinksParams;

.field private final synthetic f$4:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Landroid/text/Spannable;Ljava/lang/CharSequence;Landroid/view/textclassifier/TextLinksParams;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/util/-$$Lambda$Linkify$ZGgxzuK-YqBkZXo_7HE4xwOLsh0;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Landroid/text/util/-$$Lambda$Linkify$ZGgxzuK-YqBkZXo_7HE4xwOLsh0;->f$1:Landroid/text/Spannable;

    iput-object p3, p0, Landroid/text/util/-$$Lambda$Linkify$ZGgxzuK-YqBkZXo_7HE4xwOLsh0;->f$2:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroid/text/util/-$$Lambda$Linkify$ZGgxzuK-YqBkZXo_7HE4xwOLsh0;->f$3:Landroid/view/textclassifier/TextLinksParams;

    iput-object p5, p0, Landroid/text/util/-$$Lambda$Linkify$ZGgxzuK-YqBkZXo_7HE4xwOLsh0;->f$4:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Landroid/text/util/-$$Lambda$Linkify$ZGgxzuK-YqBkZXo_7HE4xwOLsh0;->f$0:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/text/util/-$$Lambda$Linkify$ZGgxzuK-YqBkZXo_7HE4xwOLsh0;->f$1:Landroid/text/Spannable;

    iget-object v2, p0, Landroid/text/util/-$$Lambda$Linkify$ZGgxzuK-YqBkZXo_7HE4xwOLsh0;->f$2:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/text/util/-$$Lambda$Linkify$ZGgxzuK-YqBkZXo_7HE4xwOLsh0;->f$3:Landroid/view/textclassifier/TextLinksParams;

    iget-object v4, p0, Landroid/text/util/-$$Lambda$Linkify$ZGgxzuK-YqBkZXo_7HE4xwOLsh0;->f$4:Ljava/lang/Runnable;

    move-object v5, p1

    check-cast v5, Landroid/view/textclassifier/TextLinks;

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->lambda$addLinksAsync$2(Ljava/util/function/Consumer;Landroid/text/Spannable;Ljava/lang/CharSequence;Landroid/view/textclassifier/TextLinksParams;Ljava/lang/Runnable;Landroid/view/textclassifier/TextLinks;)V

    return-void
.end method
