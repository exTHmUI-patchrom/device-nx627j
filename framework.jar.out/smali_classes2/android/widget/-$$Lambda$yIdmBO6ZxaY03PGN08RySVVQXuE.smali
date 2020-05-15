.class public final synthetic Landroid/widget/-$$Lambda$yIdmBO6ZxaY03PGN08RySVVQXuE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/-$$Lambda$yIdmBO6ZxaY03PGN08RySVVQXuE;->f$0:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/widget/-$$Lambda$yIdmBO6ZxaY03PGN08RySVVQXuE;->f$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method
