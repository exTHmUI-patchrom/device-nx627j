.class public final synthetic Landroid/view/inputmethod/-$$Lambda$InputMethodManager$jNoqB3BbMToNjx3pS-WwvtHoFfg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/inputmethod/InputMethodManager;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/inputmethod/InputMethodManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/-$$Lambda$InputMethodManager$jNoqB3BbMToNjx3pS-WwvtHoFfg;->f$0:Landroid/view/inputmethod/InputMethodManager;

    iput p2, p0, Landroid/view/inputmethod/-$$Lambda$InputMethodManager$jNoqB3BbMToNjx3pS-WwvtHoFfg;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/-$$Lambda$InputMethodManager$jNoqB3BbMToNjx3pS-WwvtHoFfg;->f$0:Landroid/view/inputmethod/InputMethodManager;

    iget v1, p0, Landroid/view/inputmethod/-$$Lambda$InputMethodManager$jNoqB3BbMToNjx3pS-WwvtHoFfg;->f$1:I

    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->lambda$startInputInner$0(Landroid/view/inputmethod/InputMethodManager;I)V

    return-void
.end method
