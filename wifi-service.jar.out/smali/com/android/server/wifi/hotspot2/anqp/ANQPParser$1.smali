.class synthetic Lcom/android/server/wifi/hotspot2/anqp/ANQPParser$1;
.super Ljava/lang/Object;
.source "ANQPParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/anqp/ANQPParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$server$wifi$hotspot2$anqp$Constants$ANQPElementType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 60
    invoke-static {}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->values()[Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser$1;->$SwitchMap$com$android$server$wifi$hotspot2$anqp$Constants$ANQPElementType:[I

    :try_start_0
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser$1;->$SwitchMap$com$android$server$wifi$hotspot2$anqp$Constants$ANQPElementType:[I

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser$1;->$SwitchMap$com$android$server$wifi$hotspot2$anqp$Constants$ANQPElementType:[I

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser$1;->$SwitchMap$com$android$server$wifi$hotspot2$anqp$Constants$ANQPElementType:[I

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser$1;->$SwitchMap$com$android$server$wifi$hotspot2$anqp$Constants$ANQPElementType:[I

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser$1;->$SwitchMap$com$android$server$wifi$hotspot2$anqp$Constants$ANQPElementType:[I

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser$1;->$SwitchMap$com$android$server$wifi$hotspot2$anqp$Constants$ANQPElementType:[I

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser$1;->$SwitchMap$com$android$server$wifi$hotspot2$anqp$Constants$ANQPElementType:[I

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPVendorSpec:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    :try_start_7
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser$1;->$SwitchMap$com$android$server$wifi$hotspot2$anqp$Constants$ANQPElementType:[I

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    :try_start_8
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser$1;->$SwitchMap$com$android$server$wifi$hotspot2$anqp$Constants$ANQPElementType:[I

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    :goto_8
    :try_start_9
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser$1;->$SwitchMap$com$android$server$wifi$hotspot2$anqp$Constants$ANQPElementType:[I

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_9
    :try_start_a
    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser$1;->$SwitchMap$com$android$server$wifi$hotspot2$anqp$Constants$ANQPElementType:[I

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    :goto_a
    return-void
.end method
