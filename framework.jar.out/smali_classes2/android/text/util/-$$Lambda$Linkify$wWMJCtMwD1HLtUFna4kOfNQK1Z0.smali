.class public final synthetic Landroid/text/util/-$$Lambda$Linkify$wWMJCtMwD1HLtUFna4kOfNQK1Z0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/widget/TextView;

.field private final synthetic f$1:Landroid/text/Spannable;

.field private final synthetic f$2:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Landroid/text/Spannable;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/util/-$$Lambda$Linkify$wWMJCtMwD1HLtUFna4kOfNQK1Z0;->f$0:Landroid/widget/TextView;

    iput-object p2, p0, Landroid/text/util/-$$Lambda$Linkify$wWMJCtMwD1HLtUFna4kOfNQK1Z0;->f$1:Landroid/text/Spannable;

    iput-object p3, p0, Landroid/text/util/-$$Lambda$Linkify$wWMJCtMwD1HLtUFna4kOfNQK1Z0;->f$2:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/text/util/-$$Lambda$Linkify$wWMJCtMwD1HLtUFna4kOfNQK1Z0;->f$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/text/util/-$$Lambda$Linkify$wWMJCtMwD1HLtUFna4kOfNQK1Z0;->f$1:Landroid/text/Spannable;

    iget-object v2, p0, Landroid/text/util/-$$Lambda$Linkify$wWMJCtMwD1HLtUFna4kOfNQK1Z0;->f$2:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Landroid/text/util/Linkify;->lambda$addLinksAsync$0(Landroid/widget/TextView;Landroid/text/Spannable;Ljava/lang/CharSequence;)V

    return-void
.end method
