.class public final synthetic Landroid/view/autofill/-$$Lambda$AutofillManager$YfpJNFodEuj5lbXfPlc77fsEvC8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/autofill/AutofillManager;


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/AutofillManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$YfpJNFodEuj5lbXfPlc77fsEvC8;->f$0:Landroid/view/autofill/AutofillManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$YfpJNFodEuj5lbXfPlc77fsEvC8;->f$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->lambda$onVisibleForAutofill$0(Landroid/view/autofill/AutofillManager;)V

    return-void
.end method
