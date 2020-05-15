.class public final synthetic Landroid/app/timezone/-$$Lambda$RulesManager$CallbackWrapper$t7a48uTTxaRuSo3YBKxBIbPQznY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/timezone/RulesManager$CallbackWrapper;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/timezone/RulesManager$CallbackWrapper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/timezone/-$$Lambda$RulesManager$CallbackWrapper$t7a48uTTxaRuSo3YBKxBIbPQznY;->f$0:Landroid/app/timezone/RulesManager$CallbackWrapper;

    iput p2, p0, Landroid/app/timezone/-$$Lambda$RulesManager$CallbackWrapper$t7a48uTTxaRuSo3YBKxBIbPQznY;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/app/timezone/-$$Lambda$RulesManager$CallbackWrapper$t7a48uTTxaRuSo3YBKxBIbPQznY;->f$0:Landroid/app/timezone/RulesManager$CallbackWrapper;

    iget v1, p0, Landroid/app/timezone/-$$Lambda$RulesManager$CallbackWrapper$t7a48uTTxaRuSo3YBKxBIbPQznY;->f$1:I

    invoke-static {v0, v1}, Landroid/app/timezone/RulesManager$CallbackWrapper;->lambda$onFinished$0(Landroid/app/timezone/RulesManager$CallbackWrapper;I)V

    return-void
.end method
