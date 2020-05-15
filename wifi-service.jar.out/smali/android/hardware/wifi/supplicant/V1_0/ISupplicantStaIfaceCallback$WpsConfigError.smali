.class public final Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$WpsConfigError;
.super Ljava/lang/Object;
.source "ISupplicantStaIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WpsConfigError"
.end annotation


# static fields
.field public static final CHAN_24_NOT_SUPPORTED:S = 0x3s

.field public static final CHAN_50_NOT_SUPPORTED:S = 0x4s

.field public static final CHAN_60G_NOT_SUPPORTED:S = 0x13s

.field public static final DECRYPTION_CRC_FAILURE:S = 0x2s

.field public static final DEVICE_BUSY:S = 0xes

.field public static final DEV_PASSWORD_AUTH_FAILURE:S = 0x12s

.field public static final FAILED_DHCP_CONFIG:S = 0x9s

.field public static final IP_ADDR_CONFLICT:S = 0xas

.field public static final MSG_TIMEOUT:S = 0x10s

.field public static final MULTIPLE_PBC_DETECTED:S = 0xcs

.field public static final NETWORK_ASSOC_FAILURE:S = 0x7s

.field public static final NETWORK_AUTH_FAILURE:S = 0x6s

.field public static final NO_CONN_TO_REGISTRAR:S = 0xbs

.field public static final NO_DHCP_RESPONSE:S = 0x8s

.field public static final NO_ERROR:S = 0x0s

.field public static final OOB_IFACE_READ_ERROR:S = 0x1s

.field public static final PUBLIC_KEY_HASH_MISMATCH:S = 0x14s

.field public static final REG_SESS_TIMEOUT:S = 0x11s

.field public static final ROGUE_SUSPECTED:S = 0xds

.field public static final SETUP_LOCKED:S = 0xfs

.field public static final SIGNAL_TOO_WEAK:S = 0x5s


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(S)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # S

    .line 834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 836
    .local v1, "flipped":S
    const-string v2, "NO_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 838
    const-string v2, "OOB_IFACE_READ_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    or-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    .line 841
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 842
    const-string v2, "DECRYPTION_CRC_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    or-int/lit8 v2, v1, 0x2

    int-to-short v1, v2

    .line 845
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 846
    const-string v2, "CHAN_24_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    or-int/lit8 v2, v1, 0x3

    int-to-short v1, v2

    .line 849
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 850
    const-string v2, "CHAN_50_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    or-int/lit8 v2, v1, 0x4

    int-to-short v1, v2

    .line 853
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 854
    const-string v2, "SIGNAL_TOO_WEAK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    or-int/lit8 v2, v1, 0x5

    int-to-short v1, v2

    .line 857
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 858
    const-string v2, "NETWORK_AUTH_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    or-int/lit8 v2, v1, 0x6

    int-to-short v1, v2

    .line 861
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 862
    const-string v2, "NETWORK_ASSOC_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    or-int/lit8 v2, v1, 0x7

    int-to-short v1, v2

    .line 865
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 866
    const-string v2, "NO_DHCP_RESPONSE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    or-int/lit8 v2, v1, 0x8

    int-to-short v1, v2

    .line 869
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 870
    const-string v2, "FAILED_DHCP_CONFIG"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    or-int/lit8 v2, v1, 0x9

    int-to-short v1, v2

    .line 873
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 874
    const-string v2, "IP_ADDR_CONFLICT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    or-int/lit8 v2, v1, 0xa

    int-to-short v1, v2

    .line 877
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 878
    const-string v2, "NO_CONN_TO_REGISTRAR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    or-int/lit8 v2, v1, 0xb

    int-to-short v1, v2

    .line 881
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 882
    const-string v2, "MULTIPLE_PBC_DETECTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    or-int/lit8 v2, v1, 0xc

    int-to-short v1, v2

    .line 885
    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 886
    const-string v2, "ROGUE_SUSPECTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    or-int/lit8 v2, v1, 0xd

    int-to-short v1, v2

    .line 889
    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    .line 890
    const-string v2, "DEVICE_BUSY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    or-int/lit8 v2, v1, 0xe

    int-to-short v1, v2

    .line 893
    :cond_d
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_e

    .line 894
    const-string v2, "SETUP_LOCKED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    or-int/lit8 v2, v1, 0xf

    int-to-short v1, v2

    .line 897
    :cond_e
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_f

    .line 898
    const-string v2, "MSG_TIMEOUT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    or-int/lit8 v2, v1, 0x10

    int-to-short v1, v2

    .line 901
    :cond_f
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_10

    .line 902
    const-string v2, "REG_SESS_TIMEOUT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    or-int/lit8 v2, v1, 0x11

    int-to-short v1, v2

    .line 905
    :cond_10
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_11

    .line 906
    const-string v2, "DEV_PASSWORD_AUTH_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    or-int/lit8 v2, v1, 0x12

    int-to-short v1, v2

    .line 909
    :cond_11
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_12

    .line 910
    const-string v2, "CHAN_60G_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    or-int/lit8 v2, v1, 0x13

    int-to-short v1, v2

    .line 913
    :cond_12
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_13

    .line 914
    const-string v2, "PUBLIC_KEY_HASH_MISMATCH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    or-int/lit8 v2, v1, 0x14

    int-to-short v1, v2

    .line 917
    :cond_13
    if-eq p0, v1, :cond_14

    .line 918
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    int-to-short v3, v3

    invoke-static {v3}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    :cond_14
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(S)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # S

    .line 767
    if-nez p0, :cond_0

    .line 768
    const-string v0, "NO_ERROR"

    return-object v0

    .line 770
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 771
    const-string v0, "OOB_IFACE_READ_ERROR"

    return-object v0

    .line 773
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 774
    const-string v0, "DECRYPTION_CRC_FAILURE"

    return-object v0

    .line 776
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 777
    const-string v0, "CHAN_24_NOT_SUPPORTED"

    return-object v0

    .line 779
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 780
    const-string v0, "CHAN_50_NOT_SUPPORTED"

    return-object v0

    .line 782
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 783
    const-string v0, "SIGNAL_TOO_WEAK"

    return-object v0

    .line 785
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 786
    const-string v0, "NETWORK_AUTH_FAILURE"

    return-object v0

    .line 788
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 789
    const-string v0, "NETWORK_ASSOC_FAILURE"

    return-object v0

    .line 791
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 792
    const-string v0, "NO_DHCP_RESPONSE"

    return-object v0

    .line 794
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 795
    const-string v0, "FAILED_DHCP_CONFIG"

    return-object v0

    .line 797
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 798
    const-string v0, "IP_ADDR_CONFLICT"

    return-object v0

    .line 800
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 801
    const-string v0, "NO_CONN_TO_REGISTRAR"

    return-object v0

    .line 803
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 804
    const-string v0, "MULTIPLE_PBC_DETECTED"

    return-object v0

    .line 806
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 807
    const-string v0, "ROGUE_SUSPECTED"

    return-object v0

    .line 809
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 810
    const-string v0, "DEVICE_BUSY"

    return-object v0

    .line 812
    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    .line 813
    const-string v0, "SETUP_LOCKED"

    return-object v0

    .line 815
    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    .line 816
    const-string v0, "MSG_TIMEOUT"

    return-object v0

    .line 818
    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    .line 819
    const-string v0, "REG_SESS_TIMEOUT"

    return-object v0

    .line 821
    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    .line 822
    const-string v0, "DEV_PASSWORD_AUTH_FAILURE"

    return-object v0

    .line 824
    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    .line 825
    const-string v0, "CHAN_60G_NOT_SUPPORTED"

    return-object v0

    .line 827
    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    .line 828
    const-string v0, "PUBLIC_KEY_HASH_MISMATCH"

    return-object v0

    .line 830
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
