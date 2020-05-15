.class public final synthetic Landroid/widget/-$$Lambda$Editor$TdqUlJ6RRep0wXYHaRH51nTa08I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private final synthetic f$0:Landroid/widget/Editor;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/-$$Lambda$Editor$TdqUlJ6RRep0wXYHaRH51nTa08I;->f$0:Landroid/widget/Editor;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object v0, p0, Landroid/widget/-$$Lambda$Editor$TdqUlJ6RRep0wXYHaRH51nTa08I;->f$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->lambda$startActionModeInternal$0(Landroid/widget/Editor;)V

    return-void
.end method
