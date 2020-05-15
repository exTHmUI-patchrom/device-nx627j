.class public final Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$StatusCode;
.super Ljava/lang/Object;
.source "ISupplicantStaIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusCode"
.end annotation


# static fields
.field public static final ADV_SRV_UNREACHABLE:I = 0x41

.field public static final AKMP_NOT_VALID:I = 0x2b

.field public static final ANTI_CLOGGING_TOKEN_REQ:I = 0x4c

.field public static final AP_UNABLE_TO_HANDLE_NEW_STA:I = 0x11

.field public static final ASSOC_DENIED_LISTEN_INT_TOO_LARGE:I = 0x33

.field public static final ASSOC_DENIED_NOSHORT:I = 0x13

.field public static final ASSOC_DENIED_NO_HT:I = 0x1b

.field public static final ASSOC_DENIED_NO_PCO:I = 0x1d

.field public static final ASSOC_DENIED_NO_SHORT_SLOT_TIME:I = 0x19

.field public static final ASSOC_DENIED_NO_VHT:I = 0x68

.field public static final ASSOC_DENIED_RATES:I = 0x12

.field public static final ASSOC_DENIED_UNSPEC:I = 0xc

.field public static final ASSOC_REJECTED_TEMPORARILY:I = 0x1e

.field public static final AUTHORIZATION_DEENABLED:I = 0x6b

.field public static final AUTH_TIMEOUT:I = 0x10

.field public static final BAD_INTERVAL_WITH_U_APSD_COEX:I = 0x4b

.field public static final CANNOT_FIND_ALT_TBTT:I = 0x4e

.field public static final CAPS_UNSUPPORTED:I = 0xa

.field public static final CHALLENGE_FAIL:I = 0xf

.field public static final CIPHER_REJECTED_PER_POLICY:I = 0x2e

.field public static final DENIED_DUE_TO_SPECTRUM_MANAGEMENT:I = 0x67

.field public static final DENIED_INSUFFICIENT_BANDWIDTH:I = 0x21

.field public static final DENIED_POOR_CHANNEL_CONDITIONS:I = 0x22

.field public static final DENIED_QOS_NOT_SUPPORTED:I = 0x23

.field public static final DENIED_WITH_SUGGESTED_BAND_AND_CHANNEL:I = 0x63

.field public static final DEST_STA_NOT_PRESENT:I = 0x31

.field public static final DEST_STA_NOT_QOS_STA:I = 0x32

.field public static final DIRECT_LINK_NOT_ALLOWED:I = 0x30

.field public static final ENABLEMENT_DENIED:I = 0x69

.field public static final FILS_AUTHENTICATION_FAILURE:I = 0x70

.field public static final FINITE_CYCLIC_GROUP_NOT_SUPPORTED:I = 0x4d

.field public static final GAS_ADV_PROTO_NOT_SUPPORTED:I = 0x3b

.field public static final GAS_RESP_LARGER_THAN_LIMIT:I = 0x3f

.field public static final GAS_RESP_NOT_RECEIVED:I = 0x3d

.field public static final GROUP_CIPHER_NOT_VALID:I = 0x29

.field public static final INSUFFICIENT_TCLAS_PROCESSING_RESOURCES:I = 0x39

.field public static final INVALID_FTIE:I = 0x37

.field public static final INVALID_FT_ACTION_FRAME_COUNT:I = 0x34

.field public static final INVALID_IE:I = 0x28

.field public static final INVALID_MDIE:I = 0x36

.field public static final INVALID_PARAMETERS:I = 0x26

.field public static final INVALID_PMKID:I = 0x35

.field public static final INVALID_RSNIE:I = 0x48

.field public static final INVALID_RSN_IE_CAPAB:I = 0x2d

.field public static final MAF_LIMIT_EXCEEDED:I = 0x65

.field public static final MCCAOP_RESERVATION_CONFLICT:I = 0x64

.field public static final MCCA_TRACK_LIMIT_EXCEEDED:I = 0x66

.field public static final NOT_IN_SAME_BSS:I = 0x7

.field public static final NOT_SUPPORTED_AUTH_ALG:I = 0xd

.field public static final NO_OUTSTANDING_GAS_REQ:I = 0x3c

.field public static final PAIRWISE_CIPHER_NOT_VALID:I = 0x2a

.field public static final PENDING_ADMITTING_FST_SESSION:I = 0x56

.field public static final PENDING_GAP_IN_BA_WINDOW:I = 0x58

.field public static final PERFORMING_FST_NOW:I = 0x57

.field public static final PWR_CAPABILITY_NOT_VALID:I = 0x17

.field public static final QUERY_RESP_OUTSTANDING:I = 0x5f

.field public static final R0KH_UNREACHABLE:I = 0x1c

.field public static final REASSOC_NO_ASSOC:I = 0xb

.field public static final REFUSED_AP_OUT_OF_MEMORY:I = 0x5d

.field public static final REFUSED_EXTERNAL_REASON:I = 0x5c

.field public static final REJECTED_EMERGENCY_SERVICE_NOT_SUPPORTED:I = 0x5e

.field public static final REJECTED_WITH_SUGGESTED_BSS_TRANSITION:I = 0x52

.field public static final REJECTED_WITH_SUGGESTED_CHANGES:I = 0x27

.field public static final REJECT_DSE_BAND:I = 0x60

.field public static final REJECT_NO_WAKEUP_SPECIFIED:I = 0x54

.field public static final REJECT_U_PID_SETTING:I = 0x59

.field public static final REJECT_WITH_SCHEDULE:I = 0x53

.field public static final REQUESTED_TCLAS_NOT_SUPPORTED:I = 0x38

.field public static final REQUEST_DECLINED:I = 0x25

.field public static final REQ_REFUSED_HOME:I = 0x40

.field public static final REQ_REFUSED_SSPN:I = 0x43

.field public static final REQ_REFUSED_UNAUTH_ACCESS:I = 0x44

.field public static final REQ_TCLAS_NOT_SUPPORTED:I = 0x50

.field public static final RESTRICTION_FROM_AUTHORIZED_GDB:I = 0x6a

.field public static final ROBUST_MGMT_FRAME_POLICY_VIOLATION:I = 0x1f

.field public static final SECURITY_DISABLED:I = 0x5

.field public static final SPEC_MGMT_REQUIRED:I = 0x16

.field public static final STA_TIMED_OUT_WAITING_FOR_GAS_RESP:I = 0x3e

.field public static final SUCCESS:I = 0x0

.field public static final SUCCESS_POWER_SAVE_MODE:I = 0x55

.field public static final SUPPORTED_CHANNEL_NOT_VALID:I = 0x18

.field public static final TCLAS_PROCESSING_TERMINATED:I = 0x61

.field public static final TCLAS_RESOURCES_EXCHAUSTED:I = 0x51

.field public static final TDLS_WAKEUP_ALTERNATE:I = 0x2

.field public static final TDLS_WAKEUP_REJECT:I = 0x3

.field public static final TRANSMISSION_FAILURE:I = 0x4f

.field public static final TRY_ANOTHER_BSS:I = 0x3a

.field public static final TS_NOT_CREATED:I = 0x2f

.field public static final TS_SCHEDULE_CONFLICT:I = 0x62

.field public static final UNACCEPTABLE_LIFETIME:I = 0x6

.field public static final UNKNOWN_AUTHENTICATION_SERVER:I = 0x71

.field public static final UNKNOWN_AUTH_TRANSACTION:I = 0xe

.field public static final UNSPECIFIED_FAILURE:I = 0x1

.field public static final UNSPECIFIED_QOS_FAILURE:I = 0x20

.field public static final UNSUPPORTED_RSN_IE_VERSION:I = 0x2c

.field public static final U_APSD_COEX_MODE_NOT_SUPPORTED:I = 0x4a

.field public static final U_APSD_COEX_NOT_SUPPORTED:I = 0x49


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 1370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1371
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1372
    .local v1, "flipped":I
    const-string v2, "SUCCESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1374
    const-string v2, "UNSPECIFIED_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1375
    or-int/lit8 v1, v1, 0x1

    .line 1377
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1378
    const-string v2, "TDLS_WAKEUP_ALTERNATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1379
    or-int/lit8 v1, v1, 0x2

    .line 1381
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1382
    const-string v2, "TDLS_WAKEUP_REJECT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1383
    or-int/lit8 v1, v1, 0x3

    .line 1385
    :cond_2
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 1386
    const-string v2, "SECURITY_DISABLED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1387
    or-int/lit8 v1, v1, 0x5

    .line 1389
    :cond_3
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 1390
    const-string v2, "UNACCEPTABLE_LIFETIME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1391
    or-int/lit8 v1, v1, 0x6

    .line 1393
    :cond_4
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    .line 1394
    const-string v2, "NOT_IN_SAME_BSS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1395
    or-int/lit8 v1, v1, 0x7

    .line 1397
    :cond_5
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6

    .line 1398
    const-string v2, "CAPS_UNSUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1399
    or-int/lit8 v1, v1, 0xa

    .line 1401
    :cond_6
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_7

    .line 1402
    const-string v2, "REASSOC_NO_ASSOC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1403
    or-int/lit8 v1, v1, 0xb

    .line 1405
    :cond_7
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_8

    .line 1406
    const-string v2, "ASSOC_DENIED_UNSPEC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1407
    or-int/lit8 v1, v1, 0xc

    .line 1409
    :cond_8
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_9

    .line 1410
    const-string v2, "NOT_SUPPORTED_AUTH_ALG"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1411
    or-int/lit8 v1, v1, 0xd

    .line 1413
    :cond_9
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_a

    .line 1414
    const-string v2, "UNKNOWN_AUTH_TRANSACTION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1415
    or-int/lit8 v1, v1, 0xe

    .line 1417
    :cond_a
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_b

    .line 1418
    const-string v2, "CHALLENGE_FAIL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1419
    or-int/lit8 v1, v1, 0xf

    .line 1421
    :cond_b
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_c

    .line 1422
    const-string v2, "AUTH_TIMEOUT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1423
    or-int/lit8 v1, v1, 0x10

    .line 1425
    :cond_c
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_d

    .line 1426
    const-string v2, "AP_UNABLE_TO_HANDLE_NEW_STA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    or-int/lit8 v1, v1, 0x11

    .line 1429
    :cond_d
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_e

    .line 1430
    const-string v2, "ASSOC_DENIED_RATES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1431
    or-int/lit8 v1, v1, 0x12

    .line 1433
    :cond_e
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_f

    .line 1434
    const-string v2, "ASSOC_DENIED_NOSHORT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1435
    or-int/lit8 v1, v1, 0x13

    .line 1437
    :cond_f
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_10

    .line 1438
    const-string v2, "SPEC_MGMT_REQUIRED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1439
    or-int/lit8 v1, v1, 0x16

    .line 1441
    :cond_10
    and-int/lit8 v2, p0, 0x17

    const/16 v3, 0x17

    if-ne v2, v3, :cond_11

    .line 1442
    const-string v2, "PWR_CAPABILITY_NOT_VALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1443
    or-int/lit8 v1, v1, 0x17

    .line 1445
    :cond_11
    and-int/lit8 v2, p0, 0x18

    const/16 v3, 0x18

    if-ne v2, v3, :cond_12

    .line 1446
    const-string v2, "SUPPORTED_CHANNEL_NOT_VALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1447
    or-int/lit8 v1, v1, 0x18

    .line 1449
    :cond_12
    and-int/lit8 v2, p0, 0x19

    const/16 v3, 0x19

    if-ne v2, v3, :cond_13

    .line 1450
    const-string v2, "ASSOC_DENIED_NO_SHORT_SLOT_TIME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1451
    or-int/lit8 v1, v1, 0x19

    .line 1453
    :cond_13
    and-int/lit8 v2, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_14

    .line 1454
    const-string v2, "ASSOC_DENIED_NO_HT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1455
    or-int/lit8 v1, v1, 0x1b

    .line 1457
    :cond_14
    and-int/lit8 v2, p0, 0x1c

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_15

    .line 1458
    const-string v2, "R0KH_UNREACHABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1459
    or-int/lit8 v1, v1, 0x1c

    .line 1461
    :cond_15
    and-int/lit8 v2, p0, 0x1d

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_16

    .line 1462
    const-string v2, "ASSOC_DENIED_NO_PCO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1463
    or-int/lit8 v1, v1, 0x1d

    .line 1465
    :cond_16
    and-int/lit8 v2, p0, 0x1e

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_17

    .line 1466
    const-string v2, "ASSOC_REJECTED_TEMPORARILY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1467
    or-int/lit8 v1, v1, 0x1e

    .line 1469
    :cond_17
    and-int/lit8 v2, p0, 0x1f

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_18

    .line 1470
    const-string v2, "ROBUST_MGMT_FRAME_POLICY_VIOLATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1471
    or-int/lit8 v1, v1, 0x1f

    .line 1473
    :cond_18
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_19

    .line 1474
    const-string v2, "UNSPECIFIED_QOS_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    or-int/lit8 v1, v1, 0x20

    .line 1477
    :cond_19
    and-int/lit8 v2, p0, 0x21

    const/16 v3, 0x21

    if-ne v2, v3, :cond_1a

    .line 1478
    const-string v2, "DENIED_INSUFFICIENT_BANDWIDTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1479
    or-int/lit8 v1, v1, 0x21

    .line 1481
    :cond_1a
    and-int/lit8 v2, p0, 0x22

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1b

    .line 1482
    const-string v2, "DENIED_POOR_CHANNEL_CONDITIONS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1483
    or-int/lit8 v1, v1, 0x22

    .line 1485
    :cond_1b
    and-int/lit8 v2, p0, 0x23

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1c

    .line 1486
    const-string v2, "DENIED_QOS_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1487
    or-int/lit8 v1, v1, 0x23

    .line 1489
    :cond_1c
    and-int/lit8 v2, p0, 0x25

    const/16 v3, 0x25

    if-ne v2, v3, :cond_1d

    .line 1490
    const-string v2, "REQUEST_DECLINED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1491
    or-int/lit8 v1, v1, 0x25

    .line 1493
    :cond_1d
    and-int/lit8 v2, p0, 0x26

    const/16 v3, 0x26

    if-ne v2, v3, :cond_1e

    .line 1494
    const-string v2, "INVALID_PARAMETERS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1495
    or-int/lit8 v1, v1, 0x26

    .line 1497
    :cond_1e
    and-int/lit8 v2, p0, 0x27

    const/16 v3, 0x27

    if-ne v2, v3, :cond_1f

    .line 1498
    const-string v2, "REJECTED_WITH_SUGGESTED_CHANGES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1499
    or-int/lit8 v1, v1, 0x27

    .line 1501
    :cond_1f
    and-int/lit8 v2, p0, 0x28

    const/16 v3, 0x28

    if-ne v2, v3, :cond_20

    .line 1502
    const-string v2, "INVALID_IE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1503
    or-int/lit8 v1, v1, 0x28

    .line 1505
    :cond_20
    and-int/lit8 v2, p0, 0x29

    const/16 v3, 0x29

    if-ne v2, v3, :cond_21

    .line 1506
    const-string v2, "GROUP_CIPHER_NOT_VALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1507
    or-int/lit8 v1, v1, 0x29

    .line 1509
    :cond_21
    and-int/lit8 v2, p0, 0x2a

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_22

    .line 1510
    const-string v2, "PAIRWISE_CIPHER_NOT_VALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1511
    or-int/lit8 v1, v1, 0x2a

    .line 1513
    :cond_22
    and-int/lit8 v2, p0, 0x2b

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_23

    .line 1514
    const-string v2, "AKMP_NOT_VALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1515
    or-int/lit8 v1, v1, 0x2b

    .line 1517
    :cond_23
    and-int/lit8 v2, p0, 0x2c

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_24

    .line 1518
    const-string v2, "UNSUPPORTED_RSN_IE_VERSION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1519
    or-int/lit8 v1, v1, 0x2c

    .line 1521
    :cond_24
    and-int/lit8 v2, p0, 0x2d

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_25

    .line 1522
    const-string v2, "INVALID_RSN_IE_CAPAB"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1523
    or-int/lit8 v1, v1, 0x2d

    .line 1525
    :cond_25
    and-int/lit8 v2, p0, 0x2e

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_26

    .line 1526
    const-string v2, "CIPHER_REJECTED_PER_POLICY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1527
    or-int/lit8 v1, v1, 0x2e

    .line 1529
    :cond_26
    and-int/lit8 v2, p0, 0x2f

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_27

    .line 1530
    const-string v2, "TS_NOT_CREATED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1531
    or-int/lit8 v1, v1, 0x2f

    .line 1533
    :cond_27
    and-int/lit8 v2, p0, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_28

    .line 1534
    const-string v2, "DIRECT_LINK_NOT_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1535
    or-int/lit8 v1, v1, 0x30

    .line 1537
    :cond_28
    and-int/lit8 v2, p0, 0x31

    const/16 v3, 0x31

    if-ne v2, v3, :cond_29

    .line 1538
    const-string v2, "DEST_STA_NOT_PRESENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1539
    or-int/lit8 v1, v1, 0x31

    .line 1541
    :cond_29
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_2a

    .line 1542
    const-string v2, "DEST_STA_NOT_QOS_STA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1543
    or-int/lit8 v1, v1, 0x32

    .line 1545
    :cond_2a
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_2b

    .line 1546
    const-string v2, "ASSOC_DENIED_LISTEN_INT_TOO_LARGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1547
    or-int/lit8 v1, v1, 0x33

    .line 1549
    :cond_2b
    and-int/lit8 v2, p0, 0x34

    const/16 v3, 0x34

    if-ne v2, v3, :cond_2c

    .line 1550
    const-string v2, "INVALID_FT_ACTION_FRAME_COUNT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1551
    or-int/lit8 v1, v1, 0x34

    .line 1553
    :cond_2c
    and-int/lit8 v2, p0, 0x35

    const/16 v3, 0x35

    if-ne v2, v3, :cond_2d

    .line 1554
    const-string v2, "INVALID_PMKID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1555
    or-int/lit8 v1, v1, 0x35

    .line 1557
    :cond_2d
    and-int/lit8 v2, p0, 0x36

    const/16 v3, 0x36

    if-ne v2, v3, :cond_2e

    .line 1558
    const-string v2, "INVALID_MDIE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1559
    or-int/lit8 v1, v1, 0x36

    .line 1561
    :cond_2e
    and-int/lit8 v2, p0, 0x37

    const/16 v3, 0x37

    if-ne v2, v3, :cond_2f

    .line 1562
    const-string v2, "INVALID_FTIE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1563
    or-int/lit8 v1, v1, 0x37

    .line 1565
    :cond_2f
    and-int/lit8 v2, p0, 0x38

    const/16 v3, 0x38

    if-ne v2, v3, :cond_30

    .line 1566
    const-string v2, "REQUESTED_TCLAS_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1567
    or-int/lit8 v1, v1, 0x38

    .line 1569
    :cond_30
    and-int/lit8 v2, p0, 0x39

    const/16 v3, 0x39

    if-ne v2, v3, :cond_31

    .line 1570
    const-string v2, "INSUFFICIENT_TCLAS_PROCESSING_RESOURCES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1571
    or-int/lit8 v1, v1, 0x39

    .line 1573
    :cond_31
    and-int/lit8 v2, p0, 0x3a

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_32

    .line 1574
    const-string v2, "TRY_ANOTHER_BSS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1575
    or-int/lit8 v1, v1, 0x3a

    .line 1577
    :cond_32
    and-int/lit8 v2, p0, 0x3b

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_33

    .line 1578
    const-string v2, "GAS_ADV_PROTO_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1579
    or-int/lit8 v1, v1, 0x3b

    .line 1581
    :cond_33
    and-int/lit8 v2, p0, 0x3c

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_34

    .line 1582
    const-string v2, "NO_OUTSTANDING_GAS_REQ"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1583
    or-int/lit8 v1, v1, 0x3c

    .line 1585
    :cond_34
    and-int/lit8 v2, p0, 0x3d

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_35

    .line 1586
    const-string v2, "GAS_RESP_NOT_RECEIVED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1587
    or-int/lit8 v1, v1, 0x3d

    .line 1589
    :cond_35
    and-int/lit8 v2, p0, 0x3e

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_36

    .line 1590
    const-string v2, "STA_TIMED_OUT_WAITING_FOR_GAS_RESP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1591
    or-int/lit8 v1, v1, 0x3e

    .line 1593
    :cond_36
    and-int/lit8 v2, p0, 0x3f

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_37

    .line 1594
    const-string v2, "GAS_RESP_LARGER_THAN_LIMIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1595
    or-int/lit8 v1, v1, 0x3f

    .line 1597
    :cond_37
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_38

    .line 1598
    const-string v2, "REQ_REFUSED_HOME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1599
    or-int/lit8 v1, v1, 0x40

    .line 1601
    :cond_38
    and-int/lit8 v2, p0, 0x41

    const/16 v3, 0x41

    if-ne v2, v3, :cond_39

    .line 1602
    const-string v2, "ADV_SRV_UNREACHABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1603
    or-int/lit8 v1, v1, 0x41

    .line 1605
    :cond_39
    and-int/lit8 v2, p0, 0x43

    const/16 v3, 0x43

    if-ne v2, v3, :cond_3a

    .line 1606
    const-string v2, "REQ_REFUSED_SSPN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1607
    or-int/lit8 v1, v1, 0x43

    .line 1609
    :cond_3a
    and-int/lit8 v2, p0, 0x44

    const/16 v3, 0x44

    if-ne v2, v3, :cond_3b

    .line 1610
    const-string v2, "REQ_REFUSED_UNAUTH_ACCESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1611
    or-int/lit8 v1, v1, 0x44

    .line 1613
    :cond_3b
    and-int/lit8 v2, p0, 0x48

    const/16 v3, 0x48

    if-ne v2, v3, :cond_3c

    .line 1614
    const-string v2, "INVALID_RSNIE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    or-int/lit8 v1, v1, 0x48

    .line 1617
    :cond_3c
    and-int/lit8 v2, p0, 0x49

    const/16 v3, 0x49

    if-ne v2, v3, :cond_3d

    .line 1618
    const-string v2, "U_APSD_COEX_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1619
    or-int/lit8 v1, v1, 0x49

    .line 1621
    :cond_3d
    and-int/lit8 v2, p0, 0x4a

    const/16 v3, 0x4a

    if-ne v2, v3, :cond_3e

    .line 1622
    const-string v2, "U_APSD_COEX_MODE_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1623
    or-int/lit8 v1, v1, 0x4a

    .line 1625
    :cond_3e
    and-int/lit8 v2, p0, 0x4b

    const/16 v3, 0x4b

    if-ne v2, v3, :cond_3f

    .line 1626
    const-string v2, "BAD_INTERVAL_WITH_U_APSD_COEX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1627
    or-int/lit8 v1, v1, 0x4b

    .line 1629
    :cond_3f
    and-int/lit8 v2, p0, 0x4c

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_40

    .line 1630
    const-string v2, "ANTI_CLOGGING_TOKEN_REQ"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1631
    or-int/lit8 v1, v1, 0x4c

    .line 1633
    :cond_40
    and-int/lit8 v2, p0, 0x4d

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_41

    .line 1634
    const-string v2, "FINITE_CYCLIC_GROUP_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1635
    or-int/lit8 v1, v1, 0x4d

    .line 1637
    :cond_41
    and-int/lit8 v2, p0, 0x4e

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_42

    .line 1638
    const-string v2, "CANNOT_FIND_ALT_TBTT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1639
    or-int/lit8 v1, v1, 0x4e

    .line 1641
    :cond_42
    and-int/lit8 v2, p0, 0x4f

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_43

    .line 1642
    const-string v2, "TRANSMISSION_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1643
    or-int/lit8 v1, v1, 0x4f

    .line 1645
    :cond_43
    and-int/lit8 v2, p0, 0x50

    const/16 v3, 0x50

    if-ne v2, v3, :cond_44

    .line 1646
    const-string v2, "REQ_TCLAS_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1647
    or-int/lit8 v1, v1, 0x50

    .line 1649
    :cond_44
    and-int/lit8 v2, p0, 0x51

    const/16 v3, 0x51

    if-ne v2, v3, :cond_45

    .line 1650
    const-string v2, "TCLAS_RESOURCES_EXCHAUSTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1651
    or-int/lit8 v1, v1, 0x51

    .line 1653
    :cond_45
    and-int/lit8 v2, p0, 0x52

    const/16 v3, 0x52

    if-ne v2, v3, :cond_46

    .line 1654
    const-string v2, "REJECTED_WITH_SUGGESTED_BSS_TRANSITION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1655
    or-int/lit8 v1, v1, 0x52

    .line 1657
    :cond_46
    and-int/lit8 v2, p0, 0x53

    const/16 v3, 0x53

    if-ne v2, v3, :cond_47

    .line 1658
    const-string v2, "REJECT_WITH_SCHEDULE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1659
    or-int/lit8 v1, v1, 0x53

    .line 1661
    :cond_47
    and-int/lit8 v2, p0, 0x54

    const/16 v3, 0x54

    if-ne v2, v3, :cond_48

    .line 1662
    const-string v2, "REJECT_NO_WAKEUP_SPECIFIED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1663
    or-int/lit8 v1, v1, 0x54

    .line 1665
    :cond_48
    and-int/lit8 v2, p0, 0x55

    const/16 v3, 0x55

    if-ne v2, v3, :cond_49

    .line 1666
    const-string v2, "SUCCESS_POWER_SAVE_MODE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1667
    or-int/lit8 v1, v1, 0x55

    .line 1669
    :cond_49
    and-int/lit8 v2, p0, 0x56

    const/16 v3, 0x56

    if-ne v2, v3, :cond_4a

    .line 1670
    const-string v2, "PENDING_ADMITTING_FST_SESSION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1671
    or-int/lit8 v1, v1, 0x56

    .line 1673
    :cond_4a
    and-int/lit8 v2, p0, 0x57

    const/16 v3, 0x57

    if-ne v2, v3, :cond_4b

    .line 1674
    const-string v2, "PERFORMING_FST_NOW"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1675
    or-int/lit8 v1, v1, 0x57

    .line 1677
    :cond_4b
    and-int/lit8 v2, p0, 0x58

    const/16 v3, 0x58

    if-ne v2, v3, :cond_4c

    .line 1678
    const-string v2, "PENDING_GAP_IN_BA_WINDOW"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1679
    or-int/lit8 v1, v1, 0x58

    .line 1681
    :cond_4c
    and-int/lit8 v2, p0, 0x59

    const/16 v3, 0x59

    if-ne v2, v3, :cond_4d

    .line 1682
    const-string v2, "REJECT_U_PID_SETTING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1683
    or-int/lit8 v1, v1, 0x59

    .line 1685
    :cond_4d
    and-int/lit8 v2, p0, 0x5c

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_4e

    .line 1686
    const-string v2, "REFUSED_EXTERNAL_REASON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1687
    or-int/lit8 v1, v1, 0x5c

    .line 1689
    :cond_4e
    and-int/lit8 v2, p0, 0x5d

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_4f

    .line 1690
    const-string v2, "REFUSED_AP_OUT_OF_MEMORY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1691
    or-int/lit8 v1, v1, 0x5d

    .line 1693
    :cond_4f
    and-int/lit8 v2, p0, 0x5e

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_50

    .line 1694
    const-string v2, "REJECTED_EMERGENCY_SERVICE_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1695
    or-int/lit8 v1, v1, 0x5e

    .line 1697
    :cond_50
    and-int/lit8 v2, p0, 0x5f

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_51

    .line 1698
    const-string v2, "QUERY_RESP_OUTSTANDING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1699
    or-int/lit8 v1, v1, 0x5f

    .line 1701
    :cond_51
    and-int/lit8 v2, p0, 0x60

    const/16 v3, 0x60

    if-ne v2, v3, :cond_52

    .line 1702
    const-string v2, "REJECT_DSE_BAND"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1703
    or-int/lit8 v1, v1, 0x60

    .line 1705
    :cond_52
    and-int/lit8 v2, p0, 0x61

    const/16 v3, 0x61

    if-ne v2, v3, :cond_53

    .line 1706
    const-string v2, "TCLAS_PROCESSING_TERMINATED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1707
    or-int/lit8 v1, v1, 0x61

    .line 1709
    :cond_53
    and-int/lit8 v2, p0, 0x62

    const/16 v3, 0x62

    if-ne v2, v3, :cond_54

    .line 1710
    const-string v2, "TS_SCHEDULE_CONFLICT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1711
    or-int/lit8 v1, v1, 0x62

    .line 1713
    :cond_54
    and-int/lit8 v2, p0, 0x63

    const/16 v3, 0x63

    if-ne v2, v3, :cond_55

    .line 1714
    const-string v2, "DENIED_WITH_SUGGESTED_BAND_AND_CHANNEL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1715
    or-int/lit8 v1, v1, 0x63

    .line 1717
    :cond_55
    and-int/lit8 v2, p0, 0x64

    const/16 v3, 0x64

    if-ne v2, v3, :cond_56

    .line 1718
    const-string v2, "MCCAOP_RESERVATION_CONFLICT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1719
    or-int/lit8 v1, v1, 0x64

    .line 1721
    :cond_56
    and-int/lit8 v2, p0, 0x65

    const/16 v3, 0x65

    if-ne v2, v3, :cond_57

    .line 1722
    const-string v2, "MAF_LIMIT_EXCEEDED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1723
    or-int/lit8 v1, v1, 0x65

    .line 1725
    :cond_57
    and-int/lit8 v2, p0, 0x66

    const/16 v3, 0x66

    if-ne v2, v3, :cond_58

    .line 1726
    const-string v2, "MCCA_TRACK_LIMIT_EXCEEDED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1727
    or-int/lit8 v1, v1, 0x66

    .line 1729
    :cond_58
    and-int/lit8 v2, p0, 0x67

    const/16 v3, 0x67

    if-ne v2, v3, :cond_59

    .line 1730
    const-string v2, "DENIED_DUE_TO_SPECTRUM_MANAGEMENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1731
    or-int/lit8 v1, v1, 0x67

    .line 1733
    :cond_59
    and-int/lit8 v2, p0, 0x68

    const/16 v3, 0x68

    if-ne v2, v3, :cond_5a

    .line 1734
    const-string v2, "ASSOC_DENIED_NO_VHT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1735
    or-int/lit8 v1, v1, 0x68

    .line 1737
    :cond_5a
    and-int/lit8 v2, p0, 0x69

    const/16 v3, 0x69

    if-ne v2, v3, :cond_5b

    .line 1738
    const-string v2, "ENABLEMENT_DENIED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1739
    or-int/lit8 v1, v1, 0x69

    .line 1741
    :cond_5b
    and-int/lit8 v2, p0, 0x6a

    const/16 v3, 0x6a

    if-ne v2, v3, :cond_5c

    .line 1742
    const-string v2, "RESTRICTION_FROM_AUTHORIZED_GDB"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1743
    or-int/lit8 v1, v1, 0x6a

    .line 1745
    :cond_5c
    and-int/lit8 v2, p0, 0x6b

    const/16 v3, 0x6b

    if-ne v2, v3, :cond_5d

    .line 1746
    const-string v2, "AUTHORIZATION_DEENABLED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1747
    or-int/lit8 v1, v1, 0x6b

    .line 1749
    :cond_5d
    and-int/lit8 v2, p0, 0x70

    const/16 v3, 0x70

    if-ne v2, v3, :cond_5e

    .line 1750
    const-string v2, "FILS_AUTHENTICATION_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1751
    or-int/lit8 v1, v1, 0x70

    .line 1753
    :cond_5e
    and-int/lit8 v2, p0, 0x71

    const/16 v3, 0x71

    if-ne v2, v3, :cond_5f

    .line 1754
    const-string v2, "UNKNOWN_AUTHENTICATION_SERVER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1755
    or-int/lit8 v1, v1, 0x71

    .line 1757
    :cond_5f
    if-eq p0, v1, :cond_60

    .line 1758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1760
    :cond_60
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 1075
    if-nez p0, :cond_0

    .line 1076
    const-string v0, "SUCCESS"

    return-object v0

    .line 1078
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 1079
    const-string v0, "UNSPECIFIED_FAILURE"

    return-object v0

    .line 1081
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 1082
    const-string v0, "TDLS_WAKEUP_ALTERNATE"

    return-object v0

    .line 1084
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 1085
    const-string v0, "TDLS_WAKEUP_REJECT"

    return-object v0

    .line 1087
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 1088
    const-string v0, "SECURITY_DISABLED"

    return-object v0

    .line 1090
    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    .line 1091
    const-string v0, "UNACCEPTABLE_LIFETIME"

    return-object v0

    .line 1093
    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    .line 1094
    const-string v0, "NOT_IN_SAME_BSS"

    return-object v0

    .line 1096
    :cond_6
    const/16 v0, 0xa

    if-ne p0, v0, :cond_7

    .line 1097
    const-string v0, "CAPS_UNSUPPORTED"

    return-object v0

    .line 1099
    :cond_7
    const/16 v0, 0xb

    if-ne p0, v0, :cond_8

    .line 1100
    const-string v0, "REASSOC_NO_ASSOC"

    return-object v0

    .line 1102
    :cond_8
    const/16 v0, 0xc

    if-ne p0, v0, :cond_9

    .line 1103
    const-string v0, "ASSOC_DENIED_UNSPEC"

    return-object v0

    .line 1105
    :cond_9
    const/16 v0, 0xd

    if-ne p0, v0, :cond_a

    .line 1106
    const-string v0, "NOT_SUPPORTED_AUTH_ALG"

    return-object v0

    .line 1108
    :cond_a
    const/16 v0, 0xe

    if-ne p0, v0, :cond_b

    .line 1109
    const-string v0, "UNKNOWN_AUTH_TRANSACTION"

    return-object v0

    .line 1111
    :cond_b
    const/16 v0, 0xf

    if-ne p0, v0, :cond_c

    .line 1112
    const-string v0, "CHALLENGE_FAIL"

    return-object v0

    .line 1114
    :cond_c
    const/16 v0, 0x10

    if-ne p0, v0, :cond_d

    .line 1115
    const-string v0, "AUTH_TIMEOUT"

    return-object v0

    .line 1117
    :cond_d
    const/16 v0, 0x11

    if-ne p0, v0, :cond_e

    .line 1118
    const-string v0, "AP_UNABLE_TO_HANDLE_NEW_STA"

    return-object v0

    .line 1120
    :cond_e
    const/16 v0, 0x12

    if-ne p0, v0, :cond_f

    .line 1121
    const-string v0, "ASSOC_DENIED_RATES"

    return-object v0

    .line 1123
    :cond_f
    const/16 v0, 0x13

    if-ne p0, v0, :cond_10

    .line 1124
    const-string v0, "ASSOC_DENIED_NOSHORT"

    return-object v0

    .line 1126
    :cond_10
    const/16 v0, 0x16

    if-ne p0, v0, :cond_11

    .line 1127
    const-string v0, "SPEC_MGMT_REQUIRED"

    return-object v0

    .line 1129
    :cond_11
    const/16 v0, 0x17

    if-ne p0, v0, :cond_12

    .line 1130
    const-string v0, "PWR_CAPABILITY_NOT_VALID"

    return-object v0

    .line 1132
    :cond_12
    const/16 v0, 0x18

    if-ne p0, v0, :cond_13

    .line 1133
    const-string v0, "SUPPORTED_CHANNEL_NOT_VALID"

    return-object v0

    .line 1135
    :cond_13
    const/16 v0, 0x19

    if-ne p0, v0, :cond_14

    .line 1136
    const-string v0, "ASSOC_DENIED_NO_SHORT_SLOT_TIME"

    return-object v0

    .line 1138
    :cond_14
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_15

    .line 1139
    const-string v0, "ASSOC_DENIED_NO_HT"

    return-object v0

    .line 1141
    :cond_15
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_16

    .line 1142
    const-string v0, "R0KH_UNREACHABLE"

    return-object v0

    .line 1144
    :cond_16
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_17

    .line 1145
    const-string v0, "ASSOC_DENIED_NO_PCO"

    return-object v0

    .line 1147
    :cond_17
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_18

    .line 1148
    const-string v0, "ASSOC_REJECTED_TEMPORARILY"

    return-object v0

    .line 1150
    :cond_18
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_19

    .line 1151
    const-string v0, "ROBUST_MGMT_FRAME_POLICY_VIOLATION"

    return-object v0

    .line 1153
    :cond_19
    const/16 v0, 0x20

    if-ne p0, v0, :cond_1a

    .line 1154
    const-string v0, "UNSPECIFIED_QOS_FAILURE"

    return-object v0

    .line 1156
    :cond_1a
    const/16 v0, 0x21

    if-ne p0, v0, :cond_1b

    .line 1157
    const-string v0, "DENIED_INSUFFICIENT_BANDWIDTH"

    return-object v0

    .line 1159
    :cond_1b
    const/16 v0, 0x22

    if-ne p0, v0, :cond_1c

    .line 1160
    const-string v0, "DENIED_POOR_CHANNEL_CONDITIONS"

    return-object v0

    .line 1162
    :cond_1c
    const/16 v0, 0x23

    if-ne p0, v0, :cond_1d

    .line 1163
    const-string v0, "DENIED_QOS_NOT_SUPPORTED"

    return-object v0

    .line 1165
    :cond_1d
    const/16 v0, 0x25

    if-ne p0, v0, :cond_1e

    .line 1166
    const-string v0, "REQUEST_DECLINED"

    return-object v0

    .line 1168
    :cond_1e
    const/16 v0, 0x26

    if-ne p0, v0, :cond_1f

    .line 1169
    const-string v0, "INVALID_PARAMETERS"

    return-object v0

    .line 1171
    :cond_1f
    const/16 v0, 0x27

    if-ne p0, v0, :cond_20

    .line 1172
    const-string v0, "REJECTED_WITH_SUGGESTED_CHANGES"

    return-object v0

    .line 1174
    :cond_20
    const/16 v0, 0x28

    if-ne p0, v0, :cond_21

    .line 1175
    const-string v0, "INVALID_IE"

    return-object v0

    .line 1177
    :cond_21
    const/16 v0, 0x29

    if-ne p0, v0, :cond_22

    .line 1178
    const-string v0, "GROUP_CIPHER_NOT_VALID"

    return-object v0

    .line 1180
    :cond_22
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_23

    .line 1181
    const-string v0, "PAIRWISE_CIPHER_NOT_VALID"

    return-object v0

    .line 1183
    :cond_23
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_24

    .line 1184
    const-string v0, "AKMP_NOT_VALID"

    return-object v0

    .line 1186
    :cond_24
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_25

    .line 1187
    const-string v0, "UNSUPPORTED_RSN_IE_VERSION"

    return-object v0

    .line 1189
    :cond_25
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_26

    .line 1190
    const-string v0, "INVALID_RSN_IE_CAPAB"

    return-object v0

    .line 1192
    :cond_26
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_27

    .line 1193
    const-string v0, "CIPHER_REJECTED_PER_POLICY"

    return-object v0

    .line 1195
    :cond_27
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_28

    .line 1196
    const-string v0, "TS_NOT_CREATED"

    return-object v0

    .line 1198
    :cond_28
    const/16 v0, 0x30

    if-ne p0, v0, :cond_29

    .line 1199
    const-string v0, "DIRECT_LINK_NOT_ALLOWED"

    return-object v0

    .line 1201
    :cond_29
    const/16 v0, 0x31

    if-ne p0, v0, :cond_2a

    .line 1202
    const-string v0, "DEST_STA_NOT_PRESENT"

    return-object v0

    .line 1204
    :cond_2a
    const/16 v0, 0x32

    if-ne p0, v0, :cond_2b

    .line 1205
    const-string v0, "DEST_STA_NOT_QOS_STA"

    return-object v0

    .line 1207
    :cond_2b
    const/16 v0, 0x33

    if-ne p0, v0, :cond_2c

    .line 1208
    const-string v0, "ASSOC_DENIED_LISTEN_INT_TOO_LARGE"

    return-object v0

    .line 1210
    :cond_2c
    const/16 v0, 0x34

    if-ne p0, v0, :cond_2d

    .line 1211
    const-string v0, "INVALID_FT_ACTION_FRAME_COUNT"

    return-object v0

    .line 1213
    :cond_2d
    const/16 v0, 0x35

    if-ne p0, v0, :cond_2e

    .line 1214
    const-string v0, "INVALID_PMKID"

    return-object v0

    .line 1216
    :cond_2e
    const/16 v0, 0x36

    if-ne p0, v0, :cond_2f

    .line 1217
    const-string v0, "INVALID_MDIE"

    return-object v0

    .line 1219
    :cond_2f
    const/16 v0, 0x37

    if-ne p0, v0, :cond_30

    .line 1220
    const-string v0, "INVALID_FTIE"

    return-object v0

    .line 1222
    :cond_30
    const/16 v0, 0x38

    if-ne p0, v0, :cond_31

    .line 1223
    const-string v0, "REQUESTED_TCLAS_NOT_SUPPORTED"

    return-object v0

    .line 1225
    :cond_31
    const/16 v0, 0x39

    if-ne p0, v0, :cond_32

    .line 1226
    const-string v0, "INSUFFICIENT_TCLAS_PROCESSING_RESOURCES"

    return-object v0

    .line 1228
    :cond_32
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_33

    .line 1229
    const-string v0, "TRY_ANOTHER_BSS"

    return-object v0

    .line 1231
    :cond_33
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_34

    .line 1232
    const-string v0, "GAS_ADV_PROTO_NOT_SUPPORTED"

    return-object v0

    .line 1234
    :cond_34
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_35

    .line 1235
    const-string v0, "NO_OUTSTANDING_GAS_REQ"

    return-object v0

    .line 1237
    :cond_35
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_36

    .line 1238
    const-string v0, "GAS_RESP_NOT_RECEIVED"

    return-object v0

    .line 1240
    :cond_36
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_37

    .line 1241
    const-string v0, "STA_TIMED_OUT_WAITING_FOR_GAS_RESP"

    return-object v0

    .line 1243
    :cond_37
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_38

    .line 1244
    const-string v0, "GAS_RESP_LARGER_THAN_LIMIT"

    return-object v0

    .line 1246
    :cond_38
    const/16 v0, 0x40

    if-ne p0, v0, :cond_39

    .line 1247
    const-string v0, "REQ_REFUSED_HOME"

    return-object v0

    .line 1249
    :cond_39
    const/16 v0, 0x41

    if-ne p0, v0, :cond_3a

    .line 1250
    const-string v0, "ADV_SRV_UNREACHABLE"

    return-object v0

    .line 1252
    :cond_3a
    const/16 v0, 0x43

    if-ne p0, v0, :cond_3b

    .line 1253
    const-string v0, "REQ_REFUSED_SSPN"

    return-object v0

    .line 1255
    :cond_3b
    const/16 v0, 0x44

    if-ne p0, v0, :cond_3c

    .line 1256
    const-string v0, "REQ_REFUSED_UNAUTH_ACCESS"

    return-object v0

    .line 1258
    :cond_3c
    const/16 v0, 0x48

    if-ne p0, v0, :cond_3d

    .line 1259
    const-string v0, "INVALID_RSNIE"

    return-object v0

    .line 1261
    :cond_3d
    const/16 v0, 0x49

    if-ne p0, v0, :cond_3e

    .line 1262
    const-string v0, "U_APSD_COEX_NOT_SUPPORTED"

    return-object v0

    .line 1264
    :cond_3e
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_3f

    .line 1265
    const-string v0, "U_APSD_COEX_MODE_NOT_SUPPORTED"

    return-object v0

    .line 1267
    :cond_3f
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_40

    .line 1268
    const-string v0, "BAD_INTERVAL_WITH_U_APSD_COEX"

    return-object v0

    .line 1270
    :cond_40
    const/16 v0, 0x4c

    if-ne p0, v0, :cond_41

    .line 1271
    const-string v0, "ANTI_CLOGGING_TOKEN_REQ"

    return-object v0

    .line 1273
    :cond_41
    const/16 v0, 0x4d

    if-ne p0, v0, :cond_42

    .line 1274
    const-string v0, "FINITE_CYCLIC_GROUP_NOT_SUPPORTED"

    return-object v0

    .line 1276
    :cond_42
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_43

    .line 1277
    const-string v0, "CANNOT_FIND_ALT_TBTT"

    return-object v0

    .line 1279
    :cond_43
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_44

    .line 1280
    const-string v0, "TRANSMISSION_FAILURE"

    return-object v0

    .line 1282
    :cond_44
    const/16 v0, 0x50

    if-ne p0, v0, :cond_45

    .line 1283
    const-string v0, "REQ_TCLAS_NOT_SUPPORTED"

    return-object v0

    .line 1285
    :cond_45
    const/16 v0, 0x51

    if-ne p0, v0, :cond_46

    .line 1286
    const-string v0, "TCLAS_RESOURCES_EXCHAUSTED"

    return-object v0

    .line 1288
    :cond_46
    const/16 v0, 0x52

    if-ne p0, v0, :cond_47

    .line 1289
    const-string v0, "REJECTED_WITH_SUGGESTED_BSS_TRANSITION"

    return-object v0

    .line 1291
    :cond_47
    const/16 v0, 0x53

    if-ne p0, v0, :cond_48

    .line 1292
    const-string v0, "REJECT_WITH_SCHEDULE"

    return-object v0

    .line 1294
    :cond_48
    const/16 v0, 0x54

    if-ne p0, v0, :cond_49

    .line 1295
    const-string v0, "REJECT_NO_WAKEUP_SPECIFIED"

    return-object v0

    .line 1297
    :cond_49
    const/16 v0, 0x55

    if-ne p0, v0, :cond_4a

    .line 1298
    const-string v0, "SUCCESS_POWER_SAVE_MODE"

    return-object v0

    .line 1300
    :cond_4a
    const/16 v0, 0x56

    if-ne p0, v0, :cond_4b

    .line 1301
    const-string v0, "PENDING_ADMITTING_FST_SESSION"

    return-object v0

    .line 1303
    :cond_4b
    const/16 v0, 0x57

    if-ne p0, v0, :cond_4c

    .line 1304
    const-string v0, "PERFORMING_FST_NOW"

    return-object v0

    .line 1306
    :cond_4c
    const/16 v0, 0x58

    if-ne p0, v0, :cond_4d

    .line 1307
    const-string v0, "PENDING_GAP_IN_BA_WINDOW"

    return-object v0

    .line 1309
    :cond_4d
    const/16 v0, 0x59

    if-ne p0, v0, :cond_4e

    .line 1310
    const-string v0, "REJECT_U_PID_SETTING"

    return-object v0

    .line 1312
    :cond_4e
    const/16 v0, 0x5c

    if-ne p0, v0, :cond_4f

    .line 1313
    const-string v0, "REFUSED_EXTERNAL_REASON"

    return-object v0

    .line 1315
    :cond_4f
    const/16 v0, 0x5d

    if-ne p0, v0, :cond_50

    .line 1316
    const-string v0, "REFUSED_AP_OUT_OF_MEMORY"

    return-object v0

    .line 1318
    :cond_50
    const/16 v0, 0x5e

    if-ne p0, v0, :cond_51

    .line 1319
    const-string v0, "REJECTED_EMERGENCY_SERVICE_NOT_SUPPORTED"

    return-object v0

    .line 1321
    :cond_51
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_52

    .line 1322
    const-string v0, "QUERY_RESP_OUTSTANDING"

    return-object v0

    .line 1324
    :cond_52
    const/16 v0, 0x60

    if-ne p0, v0, :cond_53

    .line 1325
    const-string v0, "REJECT_DSE_BAND"

    return-object v0

    .line 1327
    :cond_53
    const/16 v0, 0x61

    if-ne p0, v0, :cond_54

    .line 1328
    const-string v0, "TCLAS_PROCESSING_TERMINATED"

    return-object v0

    .line 1330
    :cond_54
    const/16 v0, 0x62

    if-ne p0, v0, :cond_55

    .line 1331
    const-string v0, "TS_SCHEDULE_CONFLICT"

    return-object v0

    .line 1333
    :cond_55
    const/16 v0, 0x63

    if-ne p0, v0, :cond_56

    .line 1334
    const-string v0, "DENIED_WITH_SUGGESTED_BAND_AND_CHANNEL"

    return-object v0

    .line 1336
    :cond_56
    const/16 v0, 0x64

    if-ne p0, v0, :cond_57

    .line 1337
    const-string v0, "MCCAOP_RESERVATION_CONFLICT"

    return-object v0

    .line 1339
    :cond_57
    const/16 v0, 0x65

    if-ne p0, v0, :cond_58

    .line 1340
    const-string v0, "MAF_LIMIT_EXCEEDED"

    return-object v0

    .line 1342
    :cond_58
    const/16 v0, 0x66

    if-ne p0, v0, :cond_59

    .line 1343
    const-string v0, "MCCA_TRACK_LIMIT_EXCEEDED"

    return-object v0

    .line 1345
    :cond_59
    const/16 v0, 0x67

    if-ne p0, v0, :cond_5a

    .line 1346
    const-string v0, "DENIED_DUE_TO_SPECTRUM_MANAGEMENT"

    return-object v0

    .line 1348
    :cond_5a
    const/16 v0, 0x68

    if-ne p0, v0, :cond_5b

    .line 1349
    const-string v0, "ASSOC_DENIED_NO_VHT"

    return-object v0

    .line 1351
    :cond_5b
    const/16 v0, 0x69

    if-ne p0, v0, :cond_5c

    .line 1352
    const-string v0, "ENABLEMENT_DENIED"

    return-object v0

    .line 1354
    :cond_5c
    const/16 v0, 0x6a

    if-ne p0, v0, :cond_5d

    .line 1355
    const-string v0, "RESTRICTION_FROM_AUTHORIZED_GDB"

    return-object v0

    .line 1357
    :cond_5d
    const/16 v0, 0x6b

    if-ne p0, v0, :cond_5e

    .line 1358
    const-string v0, "AUTHORIZATION_DEENABLED"

    return-object v0

    .line 1360
    :cond_5e
    const/16 v0, 0x70

    if-ne p0, v0, :cond_5f

    .line 1361
    const-string v0, "FILS_AUTHENTICATION_FAILURE"

    return-object v0

    .line 1363
    :cond_5f
    const/16 v0, 0x71

    if-ne p0, v0, :cond_60

    .line 1364
    const-string v0, "UNKNOWN_AUTHENTICATION_SERVER"

    return-object v0

    .line 1366
    :cond_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
