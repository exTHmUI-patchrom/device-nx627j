.class public abstract Landroid/hardware/wifi/V1_1/IWifiChip$Stub;
.super Landroid/os/HwBinder;
.source "IWifiChip.java"

# interfaces
.implements Landroid/hardware/wifi/V1_1/IWifiChip;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/V1_1/IWifiChip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1195
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1198
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1242
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1243
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1244
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1245
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1246
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1217
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x50t
        0x56t
        -0x1ft
        -0x22t
        -0x6t
        -0x4ct
        0x7t
        0x15t
        -0x7ct
        0x21t
        0x45t
        -0x7ct
        0x5t
        0x7dt
        0xbt
        -0x39t
        0x3at
        0x61t
        0x30t
        -0x7ft
        -0x41t
        0x11t
        0x52t
        0x59t
        0x5t
        0x49t
        0x64t
        -0x63t
        0x45t
        -0x7et
        -0x3ft
        0x3ct
    .end array-data

    :array_1
    .array-data 1
        -0xdt
        -0x12t
        -0x34t
        0x48t
        -0x63t
        -0x15t
        0x4ct
        0x74t
        -0x77t
        0x2ft
        0x59t
        -0x15t
        0x7at
        -0x25t
        0x76t
        -0x70t
        0x63t
        -0x43t
        0x5ct
        0x35t
        0x4at
        -0x3ft
        0x32t
        -0x4at
        0x26t
        -0x5bt
        -0xct
        0x2bt
        0x36t
        0x3dt
        0x36t
        -0x44t
    .end array-data

    :array_2
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1203
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.wifi@1.1::IWifiChip"

    const-string v2, "android.hardware.wifi@1.0::IWifiChip"

    const-string v3, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1211
    const-string v0, "android.hardware.wifi@1.1::IWifiChip"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1231
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1251
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1252
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 9
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1280
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_13

    .line 2079
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 2080
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_57

    .line 2081
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2082
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2083
    goto/16 :goto_13

    .line 2066
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 2067
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 2068
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2069
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2070
    goto/16 :goto_13

    .line 2071
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2073
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->notifySyspropsChanged()V

    .line 2074
    goto/16 :goto_13

    .line 2050
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 2051
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 2052
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2053
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2054
    goto/16 :goto_13

    .line 2055
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2057
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2058
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2059
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2060
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2061
    goto/16 :goto_13

    .line 2035
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 2036
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 2037
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2038
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2039
    goto/16 :goto_13

    .line 2040
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2042
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->ping()V

    .line 2043
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2044
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2045
    goto/16 :goto_13

    .line 2025
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 2026
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_57

    .line 2027
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2028
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2029
    goto/16 :goto_13

    .line 2012
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 2013
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 2014
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2015
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2016
    goto/16 :goto_13

    .line 2017
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2019
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->setHALInstrumentation()V

    .line 2020
    goto/16 :goto_13

    .line 1979
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 1980
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 1981
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1982
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1983
    goto/16 :goto_13

    .line 1984
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1986
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1987
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1989
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1991
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1992
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1993
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1994
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 1995
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 1997
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 1998
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1999
    nop

    .line 1995
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2002
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2004
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2006
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2007
    goto/16 :goto_13

    .line 1963
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 1964
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 1965
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1966
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1967
    goto/16 :goto_13

    .line 1968
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1970
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1971
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1972
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1973
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1974
    goto/16 :goto_13

    .line 1949
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 1950
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 1951
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1952
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1953
    goto/16 :goto_13

    .line 1954
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1956
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1957
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1958
    goto/16 :goto_13

    .line 1933
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 1934
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 1935
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1936
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1937
    goto/16 :goto_13

    .line 1938
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1940
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1941
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1942
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1943
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1944
    goto/16 :goto_13

    .line 1917
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    goto :goto_7

    :cond_13
    move v2, v1

    .line 1918
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_14

    .line 1919
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1920
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1921
    goto/16 :goto_13

    .line 1922
    :cond_14
    const-string v0, "android.hardware.wifi@1.1::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1924
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->resetTxPowerScenario()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1925
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1926
    invoke-virtual {v0, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1927
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1928
    goto/16 :goto_13

    .line 1900
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    goto :goto_8

    :cond_15
    move v2, v1

    .line 1901
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_8
    if-eqz v2, :cond_16

    .line 1902
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1903
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1904
    goto/16 :goto_13

    .line 1905
    :cond_16
    const-string v0, "android.hardware.wifi@1.1::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1907
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1908
    .local v0, "scenario":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->selectTxPowerScenario(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1909
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1910
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1911
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1912
    goto/16 :goto_13

    .line 1883
    .end local v0    # "scenario":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    goto :goto_9

    :cond_17
    move v2, v1

    .line 1884
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_9
    if-eqz v2, :cond_18

    .line 1885
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1886
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1887
    goto/16 :goto_13

    .line 1888
    :cond_18
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1890
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1891
    .local v0, "enable":Z
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->enableDebugErrorAlerts(Z)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1892
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1893
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1894
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1895
    goto/16 :goto_13

    .line 1863
    .end local v0    # "enable":Z
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 1864
    .local v1, "_hidl_is_oneway":Z
    :cond_19
    if-eqz v1, :cond_1a

    .line 1865
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1866
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1867
    goto/16 :goto_13

    .line 1868
    :cond_1a
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1870
    new-instance v0, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$22;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$22;-><init>(Landroid/hardware/wifi/V1_1/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->getDebugHostWakeReasonStats(Landroid/hardware/wifi/V1_0/IWifiChip$getDebugHostWakeReasonStatsCallback;)V

    .line 1878
    goto/16 :goto_13

    .line 1847
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    goto :goto_a

    :cond_1b
    move v2, v1

    .line 1848
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_a
    if-eqz v2, :cond_1c

    .line 1849
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1850
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1851
    goto/16 :goto_13

    .line 1852
    :cond_1c
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1854
    invoke-virtual {p0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->stopLoggingToDebugRingBuffer()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1855
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1856
    invoke-virtual {v0, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1857
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1858
    goto/16 :goto_13

    .line 1830
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    goto :goto_b

    :cond_1d
    move v2, v1

    .line 1831
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_b
    if-eqz v2, :cond_1e

    .line 1832
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1833
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1834
    goto/16 :goto_13

    .line 1835
    :cond_1e
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1837
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1838
    .local v0, "ringName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->forceDumpToDebugRingBuffer(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1839
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1840
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1841
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1842
    goto/16 :goto_13

    .line 1810
    .end local v0    # "ringName":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    goto :goto_c

    :cond_1f
    move v2, v1

    .line 1811
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_c
    if-eqz v2, :cond_20

    .line 1812
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1813
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1814
    goto/16 :goto_13

    .line 1815
    :cond_20
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1817
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1818
    .restart local v0    # "ringName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1819
    .local v3, "verboseLevel":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1820
    .local v4, "maxIntervalInSec":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 1821
    .local v5, "minDataSizeInBytes":I
    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->startLoggingToDebugRingBuffer(Ljava/lang/String;III)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v6

    .line 1822
    .local v6, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1823
    invoke-virtual {v6, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1824
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1825
    goto/16 :goto_13

    .line 1790
    .end local v0    # "ringName":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "verboseLevel":I
    .end local v4    # "maxIntervalInSec":I
    .end local v5    # "minDataSizeInBytes":I
    .end local v6    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 1791
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eqz v1, :cond_22

    .line 1792
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1793
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1794
    goto/16 :goto_13

    .line 1795
    :cond_22
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1797
    new-instance v0, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$21;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$21;-><init>(Landroid/hardware/wifi/V1_1/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->getDebugRingBuffersStatus(Landroid/hardware/wifi/V1_0/IWifiChip$getDebugRingBuffersStatusCallback;)V

    .line 1805
    goto/16 :goto_13

    .line 1769
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 1770
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eqz v1, :cond_24

    .line 1771
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1772
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1773
    goto/16 :goto_13

    .line 1774
    :cond_24
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1776
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/V1_0/IWifiIface;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/V1_0/IWifiIface;

    move-result-object v0

    .line 1777
    .local v0, "boundIface":Landroid/hardware/wifi/V1_0/IWifiIface;
    new-instance v2, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$20;

    invoke-direct {v2, p0, p3}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$20;-><init>(Landroid/hardware/wifi/V1_1/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->createRttController(Landroid/hardware/wifi/V1_0/IWifiIface;Landroid/hardware/wifi/V1_0/IWifiChip$createRttControllerCallback;)V

    .line 1785
    goto/16 :goto_13

    .line 1752
    .end local v0    # "boundIface":Landroid/hardware/wifi/V1_0/IWifiIface;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    goto :goto_d

    :cond_25
    move v2, v1

    .line 1753
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_d
    if-eqz v2, :cond_26

    .line 1754
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1755
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1756
    goto/16 :goto_13

    .line 1757
    :cond_26
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1759
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1760
    .local v0, "ifname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->removeStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1761
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1762
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1763
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1764
    goto/16 :goto_13

    .line 1731
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 1732
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eqz v1, :cond_28

    .line 1733
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1734
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1735
    goto/16 :goto_13

    .line 1736
    :cond_28
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1738
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1739
    .restart local v0    # "ifname":Ljava/lang/String;
    new-instance v2, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$19;

    invoke-direct {v2, p0, p3}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$19;-><init>(Landroid/hardware/wifi/V1_1/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->getStaIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getStaIfaceCallback;)V

    .line 1747
    goto/16 :goto_13

    .line 1711
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 1712
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eqz v1, :cond_2a

    .line 1713
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1714
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1715
    goto/16 :goto_13

    .line 1716
    :cond_2a
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1718
    new-instance v0, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$18;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$18;-><init>(Landroid/hardware/wifi/V1_1/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->getStaIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getStaIfaceNamesCallback;)V

    .line 1726
    goto/16 :goto_13

    .line 1691
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 1692
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eqz v1, :cond_2c

    .line 1693
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1694
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1695
    goto/16 :goto_13

    .line 1696
    :cond_2c
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1698
    new-instance v0, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$17;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$17;-><init>(Landroid/hardware/wifi/V1_1/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->createStaIface(Landroid/hardware/wifi/V1_0/IWifiChip$createStaIfaceCallback;)V

    .line 1706
    goto/16 :goto_13

    .line 1674
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    goto :goto_e

    :cond_2d
    move v2, v1

    .line 1675
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_e
    if-eqz v2, :cond_2e

    .line 1676
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1677
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1678
    goto/16 :goto_13

    .line 1679
    :cond_2e
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1681
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1682
    .restart local v0    # "ifname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->removeP2pIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1683
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1684
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1685
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1686
    goto/16 :goto_13

    .line 1653
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 1654
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eqz v1, :cond_30

    .line 1655
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1656
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1657
    goto/16 :goto_13

    .line 1658
    :cond_30
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1660
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1661
    .restart local v0    # "ifname":Ljava/lang/String;
    new-instance v2, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$16;

    invoke-direct {v2, p0, p3}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$16;-><init>(Landroid/hardware/wifi/V1_1/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->getP2pIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getP2pIfaceCallback;)V

    .line 1669
    goto/16 :goto_13

    .line 1633
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 1634
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eqz v1, :cond_32

    .line 1635
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1636
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1637
    goto/16 :goto_13

    .line 1638
    :cond_32
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1640
    new-instance v0, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$15;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$15;-><init>(Landroid/hardware/wifi/V1_1/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->getP2pIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getP2pIfaceNamesCallback;)V

    .line 1648
    goto/16 :goto_13

    .line 1613
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 1614
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eqz v1, :cond_34

    .line 1615
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1616
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1617
    goto/16 :goto_13

    .line 1618
    :cond_34
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1620
    new-instance v0, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$14;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$14;-><init>(Landroid/hardware/wifi/V1_1/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->createP2pIface(Landroid/hardware/wifi/V1_0/IWifiChip$createP2pIfaceCallback;)V

    .line 1628
    goto/16 :goto_13

    .line 1596
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    goto :goto_f

    :cond_35
    move v2, v1

    .line 1597
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_f
    if-eqz v2, :cond_36

    .line 1598
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1599
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1600
    goto/16 :goto_13

    .line 1601
    :cond_36
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1603
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1604
    .restart local v0    # "ifname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->removeNanIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1605
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1606
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1607
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1608
    goto/16 :goto_13

    .line 1575
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 1576
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eqz v1, :cond_38

    .line 1577
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1578
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1579
    goto/16 :goto_13

    .line 1580
    :cond_38
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1582
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1583
    .restart local v0    # "ifname":Ljava/lang/String;
    new-instance v2, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$13;

    invoke-direct {v2, p0, p3}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$13;-><init>(Landroid/hardware/wifi/V1_1/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->getNanIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;)V

    .line 1591
    goto/16 :goto_13

    .line 1555
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 1556
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eqz v1, :cond_3a

    .line 1557
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1558
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1559
    goto/16 :goto_13

    .line 1560
    :cond_3a
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1562
    new-instance v0, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$12;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$12;-><init>(Landroid/hardware/wifi/V1_1/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->getNanIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getNanIfaceNamesCallback;)V

    .line 1570
    goto/16 :goto_13

    .line 1535
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 1536
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eqz v1, :cond_3c

    .line 1537
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1538
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1539
    goto/16 :goto_13

    .line 1540
    :cond_3c
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1542
    new-instance v0, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$11;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$11;-><init>(Landroid/hardware/wifi/V1_1/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->createNanIface(Landroid/hardware/wifi/V1_0/IWifiChip$createNanIfaceCallback;)V

    .line 1550
    goto/16 :goto_13

    .line 1518
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    goto :goto_10

    :cond_3d
    move v2, v1

    .line 1519
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_10
    if-eqz v2, :cond_3e

    .line 1520
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1521
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1522
    goto/16 :goto_13

    .line 1523
    :cond_3e
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1525
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1526
    .restart local v0    # "ifname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->removeApIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1527
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1528
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1529
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1530
    goto/16 :goto_13

    .line 1497
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 1498
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eqz v1, :cond_40

    .line 1499
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1500
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1501
    goto/16 :goto_13

    .line 1502
    :cond_40
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1504
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1505
    .restart local v0    # "ifname":Ljava/lang/String;
    new-instance v2, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$10;

    invoke-direct {v2, p0, p3}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$10;-><init>(Landroid/hardware/wifi/V1_1/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->getApIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getApIfaceCallback;)V

    .line 1513
    goto/16 :goto_13

    .line 1477
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 1478
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eqz v1, :cond_42

    .line 1479
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1480
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1481
    goto/16 :goto_13

    .line 1482
    :cond_42
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1484
    new-instance v0, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$9;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$9;-><init>(Landroid/hardware/wifi/V1_1/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->getApIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getApIfaceNamesCallback;)V

    .line 1492
    goto/16 :goto_13

    .line 1457
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 1458
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eqz v1, :cond_44

    .line 1459
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1460
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1461
    goto/16 :goto_13

    .line 1462
    :cond_44
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1464
    new-instance v0, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$8;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$8;-><init>(Landroid/hardware/wifi/V1_1/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->createApIface(Landroid/hardware/wifi/V1_0/IWifiChip$createApIfaceCallback;)V

    .line 1472
    goto/16 :goto_13

    .line 1437
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 1438
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eqz v1, :cond_46

    .line 1439
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1440
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1441
    goto/16 :goto_13

    .line 1442
    :cond_46
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1444
    new-instance v0, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$7;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$7;-><init>(Landroid/hardware/wifi/V1_1/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->requestFirmwareDebugDump(Landroid/hardware/wifi/V1_0/IWifiChip$requestFirmwareDebugDumpCallback;)V

    .line 1452
    goto/16 :goto_13

    .line 1417
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 1418
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eqz v1, :cond_48

    .line 1419
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1420
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1421
    goto/16 :goto_13

    .line 1422
    :cond_48
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1424
    new-instance v0, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$6;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$6;-><init>(Landroid/hardware/wifi/V1_1/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->requestDriverDebugDump(Landroid/hardware/wifi/V1_0/IWifiChip$requestDriverDebugDumpCallback;)V

    .line 1432
    goto/16 :goto_13

    .line 1397
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    .line 1398
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_49
    if-eqz v1, :cond_4a

    .line 1399
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1400
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1401
    goto/16 :goto_13

    .line 1402
    :cond_4a
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1404
    new-instance v0, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$5;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$5;-><init>(Landroid/hardware/wifi/V1_1/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->requestChipDebugInfo(Landroid/hardware/wifi/V1_0/IWifiChip$requestChipDebugInfoCallback;)V

    .line 1412
    goto/16 :goto_13

    .line 1377
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 1378
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eqz v1, :cond_4c

    .line 1379
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1380
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1381
    goto/16 :goto_13

    .line 1382
    :cond_4c
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1384
    new-instance v0, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$4;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$4;-><init>(Landroid/hardware/wifi/V1_1/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->getMode(Landroid/hardware/wifi/V1_0/IWifiChip$getModeCallback;)V

    .line 1392
    goto/16 :goto_13

    .line 1360
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    goto :goto_11

    :cond_4d
    move v2, v1

    .line 1361
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_11
    if-eqz v2, :cond_4e

    .line 1362
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1363
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1364
    goto/16 :goto_13

    .line 1365
    :cond_4e
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1368
    .local v0, "modeId":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->configureChip(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1369
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1370
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1371
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1372
    goto/16 :goto_13

    .line 1340
    .end local v0    # "modeId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    .line 1341
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4f
    if-eqz v1, :cond_50

    .line 1342
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1343
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1344
    goto/16 :goto_13

    .line 1345
    :cond_50
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1347
    new-instance v0, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$3;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$3;-><init>(Landroid/hardware/wifi/V1_1/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->getAvailableModes(Landroid/hardware/wifi/V1_0/IWifiChip$getAvailableModesCallback;)V

    .line 1355
    goto/16 :goto_13

    .line 1320
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    .line 1321
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_51
    if-eqz v1, :cond_52

    .line 1322
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1323
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1324
    goto :goto_13

    .line 1325
    :cond_52
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1327
    new-instance v0, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$2;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$2;-><init>(Landroid/hardware/wifi/V1_1/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->getCapabilities(Landroid/hardware/wifi/V1_0/IWifiChip$getCapabilitiesCallback;)V

    .line 1335
    goto :goto_13

    .line 1303
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    goto :goto_12

    :cond_53
    move v2, v1

    .line 1304
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_12
    if-eqz v2, :cond_54

    .line 1305
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1306
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1307
    goto :goto_13

    .line 1308
    :cond_54
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/V1_0/IWifiChipEventCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/V1_0/IWifiChipEventCallback;

    move-result-object v0

    .line 1311
    .local v0, "callback":Landroid/hardware/wifi/V1_0/IWifiChipEventCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiChipEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1312
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1313
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1314
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1315
    goto :goto_13

    .line 1283
    .end local v0    # "callback":Landroid/hardware/wifi/V1_0/IWifiChipEventCallback;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    .line 1284
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_55
    if-eqz v1, :cond_56

    .line 1285
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1286
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1287
    goto :goto_13

    .line 1288
    :cond_56
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1290
    new-instance v0, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$1;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub$1;-><init>(Landroid/hardware/wifi/V1_1/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->getId(Landroid/hardware/wifi/V1_0/IWifiChip$getIdCallback;)V

    .line 1298
    nop

    .line 2088
    .end local v1    # "_hidl_is_oneway":Z
    :cond_57
    :goto_13
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 1236
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1262
    const-string v0, "android.hardware.wifi@1.1::IWifiChip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    return-object p0

    .line 1265
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1269
    invoke-virtual {p0, p1}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->registerService(Ljava/lang/String;)V

    .line 1270
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1227
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/V1_1/IWifiChip$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 1256
    const/4 v0, 0x1

    return v0
.end method
