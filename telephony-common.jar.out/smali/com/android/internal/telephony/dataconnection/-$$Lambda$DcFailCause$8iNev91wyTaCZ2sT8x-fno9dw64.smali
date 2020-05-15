.class public final synthetic Lcom/android/internal/telephony/dataconnection/-$$Lambda$DcFailCause$8iNev91wyTaCZ2sT8x-fno9dw64;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/dataconnection/DcFailCause;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/-$$Lambda$DcFailCause$8iNev91wyTaCZ2sT8x-fno9dw64;->f$0:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/-$$Lambda$DcFailCause$8iNev91wyTaCZ2sT8x-fno9dw64;->f$0:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->lambda$isRadioRestartFailure$0(Lcom/android/internal/telephony/dataconnection/DcFailCause;I)Z

    move-result p1

    return p1
.end method
