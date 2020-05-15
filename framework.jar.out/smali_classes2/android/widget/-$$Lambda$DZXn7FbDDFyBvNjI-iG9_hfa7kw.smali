.class public final synthetic Landroid/widget/-$$Lambda$DZXn7FbDDFyBvNjI-iG9_hfa7kw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/widget/Editor;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/-$$Lambda$DZXn7FbDDFyBvNjI-iG9_hfa7kw;->f$0:Landroid/widget/Editor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/widget/-$$Lambda$DZXn7FbDDFyBvNjI-iG9_hfa7kw;->f$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->replace()V

    return-void
.end method
