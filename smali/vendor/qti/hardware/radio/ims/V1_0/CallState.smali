.class public final Lvendor/qti/hardware/radio/ims/V1_0/CallState;
.super Ljava/lang/Object;
.source "CallState.java"


# static fields
.field public static final CALL_ACTIVE:I = 0x0

.field public static final CALL_ALERTING:I = 0x3

.field public static final CALL_DIALING:I = 0x2

.field public static final CALL_END:I = 0x6

.field public static final CALL_HOLDING:I = 0x1

.field public static final CALL_INCOMING:I = 0x4

.field public static final CALL_STATE_INVALID:I = 0x7

.field public static final CALL_WAITING:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 44
    .local v1, "flipped":I
    const-string v2, "CALL_ACTIVE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 46
    const-string v2, "CALL_HOLDING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    or-int/lit8 v1, v1, 0x1

    .line 49
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 50
    const-string v2, "CALL_DIALING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    or-int/lit8 v1, v1, 0x2

    .line 53
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 54
    const-string v2, "CALL_ALERTING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    or-int/lit8 v1, v1, 0x3

    .line 57
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 58
    const-string v2, "CALL_INCOMING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    or-int/lit8 v1, v1, 0x4

    .line 61
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 62
    const-string v2, "CALL_WAITING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    or-int/lit8 v1, v1, 0x5

    .line 65
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 66
    const-string v2, "CALL_END"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    or-int/lit8 v1, v1, 0x6

    .line 69
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 70
    const-string v2, "CALL_STATE_INVALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    or-int/lit8 v1, v1, 0x7

    .line 73
    :cond_6
    if-eq p0, v1, :cond_7

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_7
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 14
    if-nez p0, :cond_0

    .line 15
    const-string v0, "CALL_ACTIVE"

    return-object v0

    .line 17
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 18
    const-string v0, "CALL_HOLDING"

    return-object v0

    .line 20
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 21
    const-string v0, "CALL_DIALING"

    return-object v0

    .line 23
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 24
    const-string v0, "CALL_ALERTING"

    return-object v0

    .line 26
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 27
    const-string v0, "CALL_INCOMING"

    return-object v0

    .line 29
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 30
    const-string v0, "CALL_WAITING"

    return-object v0

    .line 32
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 33
    const-string v0, "CALL_END"

    return-object v0

    .line 35
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 36
    const-string v0, "CALL_STATE_INVALID"

    return-object v0

    .line 38
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
