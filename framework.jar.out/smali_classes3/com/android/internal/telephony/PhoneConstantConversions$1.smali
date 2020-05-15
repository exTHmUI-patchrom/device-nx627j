.class synthetic Lcom/android/internal/telephony/PhoneConstantConversions$1;
.super Ljava/lang/Object;
.source "PhoneConstantConversions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneConstantConversions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 63
    invoke-static {}, Lcom/android/internal/telephony/PhoneConstants$DataState;->values()[Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/PhoneConstantConversions$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstantConversions$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/android/internal/telephony/PhoneConstantConversions$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    :try_start_2
    sget-object v2, Lcom/android/internal/telephony/PhoneConstantConversions$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 33
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneConstants$State;->values()[Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/android/internal/telephony/PhoneConstantConversions$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    :try_start_3
    sget-object v2, Lcom/android/internal/telephony/PhoneConstantConversions$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/internal/telephony/PhoneConstantConversions$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    return-void
.end method
