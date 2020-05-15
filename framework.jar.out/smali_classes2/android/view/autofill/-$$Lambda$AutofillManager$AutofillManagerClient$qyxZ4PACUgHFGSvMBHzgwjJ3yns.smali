.class public final synthetic Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$qyxZ4PACUgHFGSvMBHzgwjJ3yns;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/autofill/AutofillManager;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Landroid/content/IntentSender;

.field private final synthetic f$4:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$qyxZ4PACUgHFGSvMBHzgwjJ3yns;->f$0:Landroid/view/autofill/AutofillManager;

    iput p2, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$qyxZ4PACUgHFGSvMBHzgwjJ3yns;->f$1:I

    iput p3, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$qyxZ4PACUgHFGSvMBHzgwjJ3yns;->f$2:I

    iput-object p4, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$qyxZ4PACUgHFGSvMBHzgwjJ3yns;->f$3:Landroid/content/IntentSender;

    iput-object p5, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$qyxZ4PACUgHFGSvMBHzgwjJ3yns;->f$4:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$qyxZ4PACUgHFGSvMBHzgwjJ3yns;->f$0:Landroid/view/autofill/AutofillManager;

    iget v1, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$qyxZ4PACUgHFGSvMBHzgwjJ3yns;->f$1:I

    iget v2, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$qyxZ4PACUgHFGSvMBHzgwjJ3yns;->f$2:I

    iget-object v3, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$qyxZ4PACUgHFGSvMBHzgwjJ3yns;->f$3:Landroid/content/IntentSender;

    iget-object v4, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$qyxZ4PACUgHFGSvMBHzgwjJ3yns;->f$4:Landroid/content/Intent;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->lambda$authenticate$2(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method
