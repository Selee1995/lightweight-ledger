.class public final Lcom/alibaba/fastjson/serializer/SerializeWriter;
.super Ljava/io/Writer;
.source "SerializeWriter.java"


# static fields
.field public static final DIGITS:[C

.field static final DigitOnes:[C

.field static final DigitTens:[C

.field static final ascii_chars:[C

.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field static final digits:[C

.field static final replaceChars:[C

.field static final sizeTable:[I

.field static final specicalFlags_doubleQuotes:[B

.field static final specicalFlags_singleQuotes:[B


# instance fields
.field protected buf:[C

.field protected count:I

.field protected features:I

.field protected final writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 1120
    fill-array-data v1, :array_0

    sput-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sizeTable:[I

    const/16 v1, 0x24

    new-array v1, v1, [C

    .line 1172
    fill-array-data v1, :array_1

    sput-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->digits:[C

    const/16 v1, 0x64

    new-array v2, v1, [C

    .line 1175
    fill-array-data v2, :array_2

    sput-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DigitTens:[C

    new-array v1, v1, [C

    .line 1181
    fill-array-data v1, :array_3

    sput-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DigitOnes:[C

    const/16 v1, 0x60

    new-array v1, v1, [C

    .line 1188
    fill-array-data v1, :array_4

    sput-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->ascii_chars:[C

    const/16 v1, 0xa1

    new-array v2, v1, [B

    .line 1195
    sput-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    new-array v1, v1, [B

    .line 1196
    sput-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_singleQuotes:[B

    const/16 v3, 0x5d

    new-array v3, v3, [C

    .line 1198
    sput-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput-byte v4, v2, v3

    const/4 v5, 0x1

    aput-byte v4, v2, v5

    const/4 v6, 0x2

    aput-byte v4, v2, v6

    const/4 v7, 0x3

    aput-byte v4, v2, v7

    aput-byte v4, v2, v4

    const/4 v8, 0x5

    aput-byte v4, v2, v8

    const/4 v9, 0x6

    aput-byte v4, v2, v9

    const/4 v10, 0x7

    aput-byte v4, v2, v10

    const/16 v11, 0x8

    aput-byte v5, v2, v11

    const/16 v12, 0x9

    aput-byte v5, v2, v12

    aput-byte v5, v2, v0

    const/16 v13, 0xb

    aput-byte v4, v2, v13

    const/16 v14, 0xc

    aput-byte v5, v2, v14

    const/16 v15, 0xd

    aput-byte v5, v2, v15

    const/16 v16, 0x22

    aput-byte v5, v2, v16

    const/16 v17, 0x5c

    aput-byte v5, v2, v17

    aput-byte v4, v1, v3

    aput-byte v4, v1, v5

    aput-byte v4, v1, v6

    aput-byte v4, v1, v7

    aput-byte v4, v1, v4

    aput-byte v4, v1, v8

    aput-byte v4, v1, v9

    aput-byte v4, v1, v10

    aput-byte v5, v1, v11

    aput-byte v5, v1, v12

    aput-byte v5, v1, v0

    aput-byte v4, v1, v13

    aput-byte v5, v1, v14

    aput-byte v5, v1, v15

    aput-byte v5, v1, v17

    const/16 v2, 0x27

    aput-byte v5, v1, v2

    const/16 v1, 0xe

    :goto_0
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 1235
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    aput-byte v4, v2, v1

    .line 1236
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_singleQuotes:[B

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x7f

    :goto_1
    const/16 v2, 0xa0

    if-ge v1, v2, :cond_1

    .line 1240
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    aput-byte v4, v2, v1

    .line 1241
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_singleQuotes:[B

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1244
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    const/16 v2, 0x30

    aput-char v2, v1, v3

    const/16 v2, 0x31

    .line 1245
    aput-char v2, v1, v5

    const/16 v2, 0x32

    .line 1246
    aput-char v2, v1, v6

    const/16 v2, 0x33

    .line 1247
    aput-char v2, v1, v7

    const/16 v2, 0x34

    .line 1248
    aput-char v2, v1, v4

    const/16 v2, 0x35

    .line 1249
    aput-char v2, v1, v8

    const/16 v2, 0x36

    .line 1250
    aput-char v2, v1, v9

    const/16 v2, 0x37

    .line 1251
    aput-char v2, v1, v10

    const/16 v2, 0x62

    .line 1252
    aput-char v2, v1, v11

    const/16 v2, 0x74

    .line 1253
    aput-char v2, v1, v12

    const/16 v2, 0x6e

    .line 1254
    aput-char v2, v1, v0

    const/16 v0, 0x76

    .line 1255
    aput-char v0, v1, v13

    const/16 v0, 0x66

    .line 1256
    aput-char v0, v1, v14

    const/16 v0, 0x72

    .line 1257
    aput-char v0, v1, v15

    .line 1258
    aput-char v16, v1, v16

    const/16 v0, 0x27

    .line 1259
    aput-char v0, v1, v0

    const/16 v0, 0x2f

    .line 1260
    aput-char v0, v1, v0

    .line 1261
    aput-char v17, v1, v17

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 1264
    fill-array-data v0, :array_5

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DIGITS:[C

    return-void

    :array_0
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_2
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    :array_3
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_4
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x31s
        0x30s
        0x32s
        0x30s
        0x33s
        0x30s
        0x34s
        0x30s
        0x35s
        0x30s
        0x36s
        0x30s
        0x37s
        0x30s
        0x38s
        0x30s
        0x39s
        0x30s
        0x41s
        0x30s
        0x42s
        0x30s
        0x43s
        0x30s
        0x44s
        0x30s
        0x45s
        0x30s
        0x46s
        0x31s
        0x30s
        0x31s
        0x31s
        0x31s
        0x32s
        0x31s
        0x33s
        0x31s
        0x34s
        0x31s
        0x35s
        0x31s
        0x36s
        0x31s
        0x37s
        0x31s
        0x38s
        0x31s
        0x39s
        0x31s
        0x41s
        0x31s
        0x42s
        0x31s
        0x43s
        0x31s
        0x44s
        0x31s
        0x45s
        0x31s
        0x46s
        0x32s
        0x30s
        0x32s
        0x31s
        0x32s
        0x32s
        0x32s
        0x33s
        0x32s
        0x34s
        0x32s
        0x35s
        0x32s
        0x36s
        0x32s
        0x37s
        0x32s
        0x38s
        0x32s
        0x39s
        0x32s
        0x41s
        0x32s
        0x42s
        0x32s
        0x43s
        0x32s
        0x44s
        0x32s
        0x45s
        0x32s
        0x46s
    .end array-data

    :array_5
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    check-cast v0, Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 52
    sget p1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 54
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-nez p1, :cond_1

    const/16 p1, 0x400

    new-array p1, p1, [C

    .line 61
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-lez p2, :cond_0

    .line 97
    new-array p1, p2, [C

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    return-void

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative initial size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 72
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-nez p1, :cond_1

    const/16 p1, 0x400

    new-array p1, p1, [C

    .line 78
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 81
    :cond_1
    array-length p1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    aget-object v1, p3, v0

    .line 82
    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_2
    iput p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    return-void
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void
.end method

.method protected static getChars(JI[C)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/16 v0, 0x2d

    neg-long p0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/32 v1, 0x7fffffff

    cmp-long v3, p0, v1

    if-lez v3, :cond_1

    const-wide/16 v1, 0x64

    .line 1135
    div-long v1, p0, v1

    const/4 v3, 0x6

    shl-long v3, v1, v3

    const/4 v5, 0x5

    shl-long v5, v1, v5

    add-long/2addr v3, v5

    const/4 v5, 0x2

    shl-long v5, v1, v5

    add-long/2addr v3, v5

    sub-long/2addr p0, v3

    long-to-int p1, p0

    add-int/lit8 p2, p2, -0x1

    .line 1139
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DigitOnes:[C

    aget-char p0, p0, p1

    aput-char p0, p3, p2

    add-int/lit8 p2, p2, -0x1

    .line 1140
    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DigitTens:[C

    aget-char p0, p0, p1

    aput-char p0, p3, p2

    move-wide p0, v1

    goto :goto_0

    :cond_1
    long-to-int p1, p0

    :goto_1
    const/high16 p0, 0x10000

    if-lt p1, p0, :cond_2

    .line 1147
    div-int/lit8 p0, p1, 0x64

    shl-int/lit8 v1, p0, 0x6

    shl-int/lit8 v2, p0, 0x5

    add-int/2addr v1, v2

    shl-int/lit8 v2, p0, 0x2

    add-int/2addr v1, v2

    sub-int/2addr p1, v1

    add-int/lit8 p2, p2, -0x1

    .line 1151
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DigitOnes:[C

    aget-char v1, v1, p1

    aput-char v1, p3, p2

    add-int/lit8 p2, p2, -0x1

    .line 1152
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DigitTens:[C

    aget-char p1, v1, p1

    aput-char p1, p3, p2

    move p1, p0

    goto :goto_1

    :cond_2
    :goto_2
    const p0, 0xcccd

    mul-int p0, p0, p1

    ushr-int/lit8 p0, p0, 0x13

    shl-int/lit8 v1, p0, 0x3

    shl-int/lit8 v2, p0, 0x1

    add-int/2addr v1, v2

    sub-int/2addr p1, v1

    add-int/lit8 p2, p2, -0x1

    .line 1160
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->digits:[C

    aget-char p1, v1, p1

    aput-char p1, p3, p2

    if-nez p0, :cond_4

    if-eqz v0, :cond_3

    add-int/lit8 p2, p2, -0x1

    .line 1165
    aput-char v0, p3, p2

    :cond_3
    return-void

    :cond_4
    move p1, p0

    goto :goto_2
.end method

.method private writeKeyWithDoubleQuoteIfHasSpecial(Ljava/lang/String;)V
    .locals 14

    .line 910
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 911
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 912
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    const/16 v4, 0x5c

    const/16 v5, 0x3a

    const/4 v6, 0x0

    const/16 v7, 0x22

    if-le v1, v3, :cond_8

    .line 913
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_7

    if-nez v0, :cond_0

    .line 915
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 916
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 917
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 923
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 924
    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    array-length v9, v8

    if-ge v3, v9, :cond_1

    aget-byte v3, v8, v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 931
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_3
    :goto_2
    if-ge v6, v0, :cond_5

    .line 934
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 935
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    array-length v8, v3

    if-ge v1, v8, :cond_4

    aget-byte v3, v3, v1

    if-eqz v3, :cond_4

    .line 936
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 937
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char v1, v3, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3

    .line 939
    :cond_4
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    .line 943
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 945
    :cond_6
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 948
    :cond_7
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_8
    if-nez v0, :cond_a

    .line 952
    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, p1, 0x3

    .line 953
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_9

    add-int/lit8 p1, p1, 0x3

    .line 954
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 956
    :cond_9
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v7, p1, v0

    add-int/lit8 v0, v1, 0x1

    .line 957
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v7, p1, v1

    add-int/lit8 v1, v0, 0x1

    .line 958
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v5, p1, v0

    return-void

    .line 962
    :cond_a
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v8, v3, v0

    .line 965
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v6, v0, v9, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 966
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move p1, v3

    const/4 v0, 0x0

    :goto_4
    if-ge p1, v8, :cond_f

    .line 971
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v10, v9, p1

    .line 972
    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    array-length v12, v11

    if-ge v10, v12, :cond_e

    aget-byte v11, v11, v10

    if-eqz v11, :cond_e

    if-nez v0, :cond_c

    add-int/lit8 v1, v1, 0x3

    .line 975
    array-length v0, v9

    if-le v1, v0, :cond_b

    .line 976
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 978
    :cond_b
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 980
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, p1, 0x1

    add-int/lit8 v11, p1, 0x3

    sub-int v12, v8, p1

    sub-int/2addr v12, v2

    invoke-static {v0, v9, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 981
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v0, v6, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 982
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v7, p1, v3

    .line 983
    aput-char v4, p1, v9

    add-int/lit8 v0, v9, 0x1

    .line 984
    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char v9, v9, v10

    aput-char v9, p1, v0

    add-int/lit8 v8, v8, 0x2

    .line 986
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v9, -0x2

    aput-char v7, p1, v9

    move p1, v0

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 991
    array-length v9, v9

    if-le v1, v9, :cond_d

    .line 992
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 994
    :cond_d
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 996
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, p1, 0x1

    add-int/lit8 v12, p1, 0x2

    sub-int v13, v8, p1

    invoke-static {v9, v11, v9, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 997
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v4, v9, p1

    .line 998
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char p1, p1, v10

    aput-char p1, v9, v11

    add-int/lit8 v8, v8, 0x1

    move p1, v11

    :cond_e
    :goto_5
    add-int/2addr p1, v2

    goto :goto_4

    .line 1004
    :cond_f
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v0, v2

    aput-char v5, p1, v0

    return-void
.end method

.method private writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V
    .locals 14

    .line 1008
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1009
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 1010
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    const/16 v4, 0x5c

    const/16 v5, 0x3a

    const/4 v6, 0x0

    const/16 v7, 0x27

    if-le v1, v3, :cond_8

    .line 1011
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_7

    if-nez v0, :cond_0

    .line 1013
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1014
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1015
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1021
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1022
    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_singleQuotes:[B

    array-length v9, v8

    if-ge v3, v9, :cond_1

    aget-byte v3, v8, v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 1029
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_3
    :goto_2
    if-ge v6, v0, :cond_5

    .line 1032
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1033
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_singleQuotes:[B

    array-length v8, v3

    if-ge v1, v8, :cond_4

    aget-byte v3, v3, v1

    if-eqz v3, :cond_4

    .line 1034
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1035
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char v1, v3, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3

    .line 1037
    :cond_4
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    .line 1041
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1043
    :cond_6
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 1047
    :cond_7
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_8
    if-nez v0, :cond_a

    .line 1051
    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, p1, 0x3

    .line 1052
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_9

    add-int/lit8 p1, p1, 0x3

    .line 1053
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1055
    :cond_9
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v7, p1, v0

    add-int/lit8 v0, v1, 0x1

    .line 1056
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v7, p1, v1

    add-int/lit8 v1, v0, 0x1

    .line 1057
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v5, p1, v0

    return-void

    .line 1061
    :cond_a
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v8, v3, v0

    .line 1064
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v6, v0, v9, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1065
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move p1, v3

    const/4 v0, 0x0

    :goto_4
    if-ge p1, v8, :cond_f

    .line 1070
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v10, v9, p1

    .line 1071
    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_singleQuotes:[B

    array-length v12, v11

    if-ge v10, v12, :cond_e

    aget-byte v11, v11, v10

    if-eqz v11, :cond_e

    if-nez v0, :cond_c

    add-int/lit8 v1, v1, 0x3

    .line 1074
    array-length v0, v9

    if-le v1, v0, :cond_b

    .line 1075
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1077
    :cond_b
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1079
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, p1, 0x1

    add-int/lit8 v11, p1, 0x3

    sub-int v12, v8, p1

    sub-int/2addr v12, v2

    invoke-static {v0, v9, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1080
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v0, v6, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1081
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v7, p1, v3

    .line 1082
    aput-char v4, p1, v9

    add-int/lit8 v0, v9, 0x1

    .line 1083
    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char v9, v9, v10

    aput-char v9, p1, v0

    add-int/lit8 v8, v8, 0x2

    .line 1085
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v9, -0x2

    aput-char v7, p1, v9

    move p1, v0

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 1090
    array-length v9, v9

    if-le v1, v9, :cond_d

    .line 1091
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1093
    :cond_d
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1095
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, p1, 0x1

    add-int/lit8 v12, p1, 0x2

    sub-int v13, v8, p1

    invoke-static {v9, v11, v9, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1096
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v4, v9, p1

    .line 1097
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char p1, p1, v10

    aput-char p1, v9, v11

    add-int/lit8 v8, v8, 0x1

    move p1, v11

    :cond_e
    :goto_5
    add-int/2addr p1, v2

    goto :goto_4

    .line 1103
    :cond_f
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    sub-int/2addr v1, v2

    aput-char v5, p1, v1

    return-void
.end method


# virtual methods
.method public append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 0

    .line 244
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    .line 232
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 233
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 238
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-lez v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v0

    const/16 v2, 0x2000

    if-gt v1, v2, :cond_1

    .line 277
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    return-void
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 102
    iget p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_0

    .line 104
    :cond_0
    iget p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    :goto_0
    return-void
.end method

.method protected expandCapacity(I)V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 173
    :goto_0
    new-array p1, p1, [C

    .line 174
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    return-void
.end method

.method public flush()V
    .locals 4

    .line 1107
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    return-void

    .line 1112
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 1113
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 1114
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1116
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 1

    .line 109
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toBytes(Ljava/lang/String;)[B
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const-string p1, "UTF-8"

    .line 258
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 260
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "toBytes error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 250
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "writer not null"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 265
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public write(I)V
    .locals 3

    .line 116
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 117
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v0, v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_0

    .line 119
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    .line 125
    :goto_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-char p1, p1

    aput-char p1, v0, v2

    .line 126
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 289
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 4

    .line 186
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    .line 187
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 188
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 189
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_1

    .line 192
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v1, v2

    add-int v3, p2, v1

    .line 193
    invoke-virtual {p1, p2, v3, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 194
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length p2, p2

    iput p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 195
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    sub-int/2addr p3, v1

    .line 198
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length p2, p2

    if-gt p3, p2, :cond_1

    move v0, p3

    move p2, v3

    goto :goto_1

    :cond_1
    move p2, v3

    goto :goto_0

    :cond_2
    :goto_1
    add-int/2addr p3, p2

    .line 202
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, p3, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 203
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public write(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 798
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public write([CII)V
    .locals 3

    if-ltz p2, :cond_3

    .line 137
    array-length v0, p1

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    if-ltz v0, :cond_3

    if-nez p3, :cond_0

    return-void

    .line 147
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    .line 148
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_1

    .line 150
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v1, v2

    .line 154
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 156
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    .line 159
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-gt p3, v0, :cond_1

    move v0, p3

    .line 163
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void

    .line 142
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public writeByteArray([B)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 328
    array-length v2, v1

    .line 330
    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    const/16 v6, 0x27

    goto :goto_1

    :cond_1
    const/16 v6, 0x22

    :goto_1
    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    const-string v1, "\'\'"

    goto :goto_2

    :cond_2
    const-string v1, "\"\""

    .line 335
    :goto_2
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void

    .line 339
    :cond_3
    sget-object v3, Lcom/alibaba/fastjson/parser/JSONLexer;->CA:[C

    .line 341
    div-int/lit8 v7, v2, 0x3

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v8, v2, -0x1

    .line 342
    div-int/lit8 v9, v8, 0x3

    add-int/2addr v9, v5

    const/4 v10, 0x2

    shl-int/2addr v9, v10

    .line 344
    iget v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v9, v11

    add-int/2addr v9, v10

    .line 346
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v12, v12

    const/16 v13, 0x3d

    if-le v9, v12, :cond_9

    .line 347
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v12, :cond_8

    .line 348
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v7, :cond_4

    add-int/lit8 v9, v5, 0x1

    .line 352
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v11, v9, 0x1

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v5, v9

    add-int/lit8 v9, v11, 0x1

    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v5, v11

    ushr-int/lit8 v11, v5, 0x12

    and-int/lit8 v11, v11, 0x3f

    .line 355
    aget-char v11, v3, v11

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v11, v5, 0xc

    and-int/lit8 v11, v11, 0x3f

    .line 356
    aget-char v11, v3, v11

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v11, v5, 0x6

    and-int/lit8 v11, v11, 0x3f

    .line 357
    aget-char v11, v3, v11

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    and-int/lit8 v5, v5, 0x3f

    .line 358
    aget-char v5, v3, v5

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    move v5, v9

    goto :goto_3

    :cond_4
    sub-int/2addr v2, v7

    if-lez v2, :cond_7

    .line 365
    aget-byte v5, v1, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0xa

    if-ne v2, v10, :cond_5

    aget-byte v1, v1, v8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v4, v1, 0x2

    :cond_5
    or-int v1, v5, v4

    shr-int/lit8 v4, v1, 0xc

    .line 368
    aget-char v4, v3, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x3f

    .line 369
    aget-char v4, v3, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    if-ne v2, v10, :cond_6

    and-int/lit8 v1, v1, 0x3f

    .line 370
    aget-char v1, v3, v1

    goto :goto_4

    :cond_6
    const/16 v1, 0x3d

    :goto_4
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 371
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 374
    :cond_7
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 377
    :cond_8
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 379
    :cond_9
    iput v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 380
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v11, 0x1

    aput-char v6, v12, v11

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v7, :cond_a

    add-int/lit8 v12, v11, 0x1

    .line 385
    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    add-int/lit8 v15, v12, 0x1

    aget-byte v12, v1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    add-int/lit8 v12, v15, 0x1

    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v11, v15

    .line 388
    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v14, 0x1

    ushr-int/lit8 v17, v11, 0x12

    and-int/lit8 v17, v17, 0x3f

    aget-char v17, v3, v17

    aput-char v17, v15, v14

    add-int/lit8 v14, v16, 0x1

    ushr-int/lit8 v17, v11, 0xc

    and-int/lit8 v17, v17, 0x3f

    .line 389
    aget-char v17, v3, v17

    aput-char v17, v15, v16

    add-int/lit8 v16, v14, 0x1

    ushr-int/lit8 v17, v11, 0x6

    and-int/lit8 v17, v17, 0x3f

    .line 390
    aget-char v17, v3, v17

    aput-char v17, v15, v14

    add-int/lit8 v14, v16, 0x1

    and-int/lit8 v11, v11, 0x3f

    .line 391
    aget-char v11, v3, v11

    aput-char v11, v15, v16

    move v11, v12

    goto :goto_5

    :cond_a
    sub-int/2addr v2, v7

    if-lez v2, :cond_d

    .line 398
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0xa

    if-ne v2, v10, :cond_b

    aget-byte v1, v1, v8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v4, v1, 0x2

    :cond_b
    or-int v1, v7, v4

    .line 401
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v9, -0x5

    shr-int/lit8 v8, v1, 0xc

    aget-char v8, v3, v8

    aput-char v8, v4, v7

    add-int/lit8 v7, v9, -0x4

    ushr-int/lit8 v8, v1, 0x6

    and-int/lit8 v8, v8, 0x3f

    .line 402
    aget-char v8, v3, v8

    aput-char v8, v4, v7

    add-int/lit8 v7, v9, -0x3

    if-ne v2, v10, :cond_c

    and-int/lit8 v1, v1, 0x3f

    .line 403
    aget-char v1, v3, v1

    goto :goto_6

    :cond_c
    const/16 v1, 0x3d

    :goto_6
    aput-char v1, v4, v7

    add-int/lit8 v1, v9, -0x2

    .line 404
    aput-char v13, v4, v1

    .line 406
    :cond_d
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    sub-int/2addr v9, v5

    aput-char v6, v1, v9

    return-void
.end method

.method public writeFieldName(Ljava/lang/String;Z)V
    .locals 3

    .line 893
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    const/16 v1, 0x3a

    if-eqz v0, :cond_1

    .line 894
    iget p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    .line 895
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 896
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 898
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V

    goto :goto_0

    .line 901
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 902
    invoke-virtual {p0, p1, v1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto :goto_0

    .line 904
    :cond_2
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithDoubleQuoteIfHasSpecial(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeInt(I)V
    .locals 5

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const-string p1, "-2147483648"

    .line 294
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    if-gez p1, :cond_1

    neg-int v0, p1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 301
    :goto_1
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sizeTable:[I

    aget v3, v3, v2

    if-gt v0, v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    if-gez p1, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 310
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v2

    .line 311
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v0, v3, :cond_4

    .line 312
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v3, :cond_3

    .line 313
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_2

    .line 315
    :cond_3
    new-array v0, v2, [C

    int-to-long v3, p1

    .line 316
    invoke-static {v3, v4, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 317
    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    return-void

    :cond_4
    :goto_2
    int-to-long v1, p1

    .line 322
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v1, v2, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 324
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public writeLong(J)V
    .locals 12

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-string p1, "-9223372036854775808"

    .line 411
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    neg-long v2, p1

    goto :goto_0

    :cond_1
    move-wide v2, p1

    :goto_0
    const-wide/16 v4, 0xa

    const/4 v6, 0x1

    move-wide v7, v4

    :goto_1
    const/16 v9, 0x13

    const/4 v10, 0x0

    if-ge v6, v9, :cond_3

    cmp-long v11, v2, v7

    if-gez v11, :cond_2

    goto :goto_2

    :cond_2
    mul-long v7, v7, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    move v9, v6

    :goto_3
    cmp-long v2, p1, v0

    if-gez v2, :cond_5

    add-int/lit8 v9, v9, 0x1

    .line 433
    :cond_5
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v9

    .line 434
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_7

    .line 435
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_6

    .line 436
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_4

    .line 438
    :cond_6
    new-array v0, v9, [C

    .line 439
    invoke-static {p1, p2, v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 440
    invoke-virtual {p0, v0, v10, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    return-void

    .line 445
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 447
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public writeNull()V
    .locals 1

    const-string v0, "null"

    .line 451
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2

    .line 802
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 805
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    :goto_0
    return-void
.end method

.method protected writeStringWithDoubleQuote(Ljava/lang/String;CZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-nez v1, :cond_1

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    if-eqz v2, :cond_0

    .line 458
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_0
    return-void

    .line 463
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 464
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    if-eqz v2, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 469
    :cond_2
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    const/16 v6, 0x9

    const/16 v7, 0xd

    const/16 v8, 0xa

    const/16 v10, 0x20

    const/16 v12, 0x2f

    const/16 v15, 0xc

    const/16 v13, 0x8

    const/16 v9, 0x22

    const/16 v11, 0x5c

    if-le v4, v5, :cond_d

    .line 470
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v5, :cond_c

    .line 471
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v3, 0x0

    .line 473
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 474
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 476
    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v14, v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v14

    if-eqz v5, :cond_6

    if-eq v4, v13, :cond_5

    if-eq v4, v15, :cond_5

    if-eq v4, v8, :cond_5

    if-eq v4, v7, :cond_5

    if-eq v4, v6, :cond_5

    if-eq v4, v9, :cond_5

    if-eq v4, v12, :cond_5

    if-ne v4, v11, :cond_3

    goto :goto_1

    :cond_3
    if-ge v4, v10, :cond_4

    .line 491
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v5, 0x75

    .line 492
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v5, 0x30

    .line 493
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 494
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 495
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;->ascii_chars:[C

    mul-int/lit8 v4, v4, 0x2

    aget-char v14, v5, v4

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v14, 0x1

    add-int/2addr v4, v14

    .line 496
    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    :cond_4
    const/16 v5, 0x7f

    if-lt v4, v5, :cond_9

    .line 501
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v5, 0x75

    .line 502
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 503
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DIGITS:[C

    ushr-int/lit8 v14, v4, 0xc

    and-int/lit8 v14, v14, 0xf

    aget-char v14, v5, v14

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v14, v4, 0x8

    and-int/lit8 v14, v14, 0xf

    .line 504
    aget-char v14, v5, v14

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v14, v4, 0x4

    and-int/lit8 v14, v14, 0xf

    .line 505
    aget-char v14, v5, v14

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    and-int/lit8 v4, v4, 0xf

    .line 506
    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 485
    :cond_5
    :goto_1
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 486
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 510
    :cond_6
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    array-length v14, v5

    if-ge v4, v14, :cond_7

    aget-byte v5, v5, v4

    if-nez v5, :cond_8

    :cond_7
    if-ne v4, v12, :cond_9

    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v14, v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v14

    if-eqz v5, :cond_9

    .line 513
    :cond_8
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 514
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 519
    :cond_9
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 522
    :cond_a
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    if-eqz v2, :cond_b

    .line 524
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_b
    return-void

    .line 528
    :cond_c
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 531
    :cond_d
    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v14, v5, 0x1

    add-int v10, v14, v3

    .line 534
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v9, v6, v5

    const/4 v5, 0x0

    .line 535
    invoke-virtual {v1, v5, v3, v6, v14}, Ljava/lang/String;->getChars(II[CI)V

    .line 537
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 539
    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v6

    const/4 v6, -0x1

    if-eqz v3, :cond_1d

    move v1, v14

    :goto_3
    if-ge v1, v10, :cond_13

    .line 543
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v3, v3, v1

    if-eq v3, v9, :cond_11

    if-eq v3, v12, :cond_11

    if-ne v3, v11, :cond_e

    goto :goto_5

    :cond_e
    if-eq v3, v13, :cond_11

    if-eq v3, v15, :cond_11

    if-eq v3, v8, :cond_11

    if-eq v3, v7, :cond_11

    const/16 v5, 0x9

    if-ne v3, v5, :cond_f

    goto :goto_5

    :cond_f
    const/16 v5, 0x20

    if-ge v3, v5, :cond_10

    :goto_4
    add-int/lit8 v4, v4, 0x5

    goto :goto_6

    :cond_10
    const/16 v5, 0x7f

    if-lt v3, v5, :cond_12

    goto :goto_4

    :cond_11
    :goto_5
    add-int/lit8 v4, v4, 0x1

    :goto_6
    move v6, v1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 576
    :cond_13
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v4, v1, :cond_14

    .line 577
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 579
    :cond_14
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    :goto_7
    if-lt v6, v14, :cond_1b

    .line 582
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v3, v1, v6

    if-eq v3, v13, :cond_19

    if-eq v3, v15, :cond_19

    if-eq v3, v8, :cond_19

    if-eq v3, v7, :cond_19

    const/16 v4, 0x9

    if-ne v3, v4, :cond_15

    goto/16 :goto_a

    :cond_15
    if-eq v3, v9, :cond_18

    if-eq v3, v12, :cond_18

    if-ne v3, v11, :cond_16

    goto/16 :goto_9

    :cond_16
    const/16 v5, 0x20

    if-ge v3, v5, :cond_17

    add-int/lit8 v5, v6, 0x1

    add-int/lit8 v4, v6, 0x6

    sub-int v16, v10, v6

    const/16 v17, 0x1

    add-int/lit8 v7, v16, -0x1

    .line 607
    invoke-static {v1, v5, v1, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 608
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v11, v1, v6

    const/16 v4, 0x75

    .line 609
    aput-char v4, v1, v5

    add-int/lit8 v4, v6, 0x2

    const/16 v5, 0x30

    .line 610
    aput-char v5, v1, v4

    add-int/lit8 v4, v6, 0x3

    .line 611
    aput-char v5, v1, v4

    add-int/lit8 v4, v6, 0x4

    .line 612
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;->ascii_chars:[C

    mul-int/lit8 v3, v3, 0x2

    aget-char v7, v5, v3

    aput-char v7, v1, v4

    add-int/lit8 v4, v6, 0x5

    const/4 v7, 0x1

    add-int/2addr v3, v7

    .line 613
    aget-char v3, v5, v3

    aput-char v3, v1, v4

    :goto_8
    add-int/lit8 v10, v10, 0x5

    goto :goto_c

    :cond_17
    const/16 v4, 0x7f

    if-lt v3, v4, :cond_1a

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v5, v6, 0x6

    sub-int v7, v10, v6

    const/16 v16, 0x1

    add-int/lit8 v7, v7, -0x1

    .line 619
    invoke-static {v1, v4, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 620
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v11, v1, v6

    const/16 v5, 0x75

    .line 621
    aput-char v5, v1, v4

    add-int/lit8 v4, v6, 0x2

    .line 622
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DIGITS:[C

    ushr-int/lit8 v7, v3, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v5, v7

    aput-char v7, v1, v4

    add-int/lit8 v4, v6, 0x3

    ushr-int/lit8 v7, v3, 0x8

    and-int/lit8 v7, v7, 0xf

    .line 623
    aget-char v7, v5, v7

    aput-char v7, v1, v4

    add-int/lit8 v4, v6, 0x4

    ushr-int/lit8 v7, v3, 0x4

    and-int/lit8 v7, v7, 0xf

    .line 624
    aget-char v7, v5, v7

    aput-char v7, v1, v4

    add-int/lit8 v4, v6, 0x5

    and-int/lit8 v3, v3, 0xf

    .line 625
    aget-char v3, v5, v3

    aput-char v3, v1, v4

    goto :goto_8

    :cond_18
    :goto_9
    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v5, v6, 0x2

    sub-int v7, v10, v6

    const/16 v16, 0x1

    add-int/lit8 v7, v7, -0x1

    .line 599
    invoke-static {v1, v4, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v11, v1, v6

    .line 601
    aput-char v3, v1, v4

    goto :goto_b

    :cond_19
    :goto_a
    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v5, v6, 0x2

    sub-int v7, v10, v6

    const/16 v16, 0x1

    add-int/lit8 v7, v7, -0x1

    .line 589
    invoke-static {v1, v4, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 590
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v11, v1, v6

    .line 591
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char v3, v5, v3

    aput-char v3, v1, v4

    :goto_b
    add-int/lit8 v10, v10, 0x1

    :cond_1a
    :goto_c
    add-int/lit8 v6, v6, -0x1

    const/16 v7, 0xd

    goto/16 :goto_7

    :cond_1b
    if-eqz v2, :cond_1c

    .line 631
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v3, -0x2

    aput-char v9, v1, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 632
    aput-char v2, v1, v3

    goto :goto_d

    :cond_1c
    const/4 v4, 0x1

    .line 634
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v2, v4

    aput-char v9, v1, v2

    :goto_d
    return-void

    :cond_1d
    if-eqz p3, :cond_33

    move v3, v14

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v13, 0x0

    const/4 v15, -0x1

    :goto_e
    const/16 v5, 0x2028

    if-ge v3, v10, :cond_29

    .line 646
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v9, v9, v3

    if-ne v9, v5, :cond_1f

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x4

    if-ne v8, v6, :cond_1e

    :goto_f
    move v8, v3

    move v15, v8

    goto :goto_11

    :cond_1e
    :goto_10
    move v15, v3

    :goto_11
    move v13, v9

    goto :goto_15

    :cond_1f
    const/16 v5, 0x5d

    if-lt v9, v5, :cond_21

    const/16 v5, 0x7f

    if-lt v9, v5, :cond_28

    const/16 v5, 0xa0

    if-ge v9, v5, :cond_28

    if-ne v8, v6, :cond_20

    move v8, v3

    :cond_20
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x4

    goto :goto_10

    :cond_21
    const/16 v5, 0x20

    if-ne v9, v5, :cond_23

    :cond_22
    :goto_12
    const/4 v5, 0x0

    goto :goto_14

    :cond_23
    if-ne v9, v12, :cond_25

    .line 678
    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v12, v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v12

    if-eqz v5, :cond_25

    :cond_24
    :goto_13
    const/4 v5, 0x1

    goto :goto_14

    :cond_25
    const/16 v5, 0x23

    if-le v9, v5, :cond_26

    if-eq v9, v11, :cond_26

    goto :goto_12

    :cond_26
    const/16 v5, 0x1f

    if-le v9, v5, :cond_24

    if-eq v9, v11, :cond_24

    const/16 v5, 0x22

    if-ne v9, v5, :cond_22

    goto :goto_13

    :goto_14
    if-eqz v5, :cond_28

    add-int/lit8 v7, v7, 0x1

    .line 694
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    array-length v12, v5

    if-ge v9, v12, :cond_27

    aget-byte v5, v5, v9

    const/4 v12, 0x4

    if-ne v5, v12, :cond_27

    add-int/lit8 v4, v4, 0x4

    :cond_27
    if-ne v8, v6, :cond_1e

    goto :goto_f

    :cond_28
    :goto_15
    add-int/lit8 v3, v3, 0x1

    const/16 v9, 0x22

    const/16 v12, 0x2f

    goto :goto_e

    :cond_29
    if-lez v7, :cond_33

    add-int/2addr v4, v7

    .line 708
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v4, v3, :cond_2a

    .line 709
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 711
    :cond_2a
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x1

    if-ne v7, v3, :cond_2d

    if-ne v13, v5, :cond_2b

    add-int/lit8 v1, v15, 0x1

    add-int/lit8 v4, v15, 0x6

    sub-int/2addr v10, v15

    sub-int/2addr v10, v3

    .line 718
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v1, v5, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 719
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v11, v4, v15

    const/16 v5, 0x75

    .line 720
    aput-char v5, v4, v1

    add-int/2addr v1, v3

    const/16 v5, 0x32

    .line 721
    aput-char v5, v4, v1

    add-int/2addr v1, v3

    const/16 v6, 0x30

    .line 722
    aput-char v6, v4, v1

    add-int/2addr v1, v3

    .line 723
    aput-char v5, v4, v1

    add-int/2addr v1, v3

    const/16 v3, 0x38

    .line 724
    aput-char v3, v4, v1

    goto/16 :goto_1b

    .line 727
    :cond_2b
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    array-length v3, v1

    if-ge v13, v3, :cond_2c

    aget-byte v1, v1, v13

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2c

    add-int/lit8 v1, v15, 0x1

    add-int/lit8 v3, v15, 0x6

    sub-int/2addr v10, v15

    const/4 v4, 0x1

    sub-int/2addr v10, v4

    .line 732
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v4, v1, v4, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 735
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v11, v3, v15

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x75

    .line 736
    aput-char v5, v3, v1

    add-int/lit8 v1, v4, 0x1

    .line 737
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DIGITS:[C

    ushr-int/lit8 v6, v13, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    aput-char v6, v3, v4

    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v6, v13, 0x8

    and-int/lit8 v6, v6, 0xf

    .line 738
    aget-char v6, v5, v6

    aput-char v6, v3, v1

    add-int/lit8 v1, v4, 0x1

    ushr-int/lit8 v6, v13, 0x4

    and-int/lit8 v6, v6, 0xf

    .line 739
    aget-char v6, v5, v6

    aput-char v6, v3, v4

    and-int/lit8 v4, v13, 0xf

    .line 740
    aget-char v4, v5, v4

    aput-char v4, v3, v1

    const/4 v4, 0x1

    goto/16 :goto_1b

    :cond_2c
    add-int/lit8 v1, v15, 0x1

    add-int/lit8 v3, v15, 0x2

    sub-int/2addr v10, v15

    const/4 v4, 0x1

    sub-int/2addr v10, v4

    .line 745
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v1, v5, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 746
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v11, v3, v15

    .line 747
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char v5, v5, v13

    aput-char v5, v3, v1

    goto/16 :goto_1b

    :cond_2d
    const/4 v4, 0x1

    if-le v7, v4, :cond_33

    sub-int v3, v8, v14

    .line 753
    :goto_16
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_33

    .line 754
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 756
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    array-length v7, v6

    if-ge v4, v7, :cond_2f

    aget-byte v7, v6, v4

    if-nez v7, :cond_2e

    goto :goto_17

    :cond_2e
    const/16 v7, 0x2f

    goto :goto_18

    :cond_2f
    :goto_17
    const/16 v7, 0x2f

    if-ne v4, v7, :cond_31

    iget v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v10, v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_31

    .line 759
    :goto_18
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v8, 0x1

    aput-char v11, v9, v8

    .line 760
    aget-byte v6, v6, v4

    const/4 v12, 0x4

    if-ne v6, v12, :cond_30

    add-int/lit8 v6, v10, 0x1

    const/16 v8, 0x75

    .line 761
    aput-char v8, v9, v10

    add-int/lit8 v8, v6, 0x1

    .line 762
    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DIGITS:[C

    ushr-int/lit8 v13, v4, 0xc

    and-int/lit8 v13, v13, 0xf

    aget-char v13, v10, v13

    aput-char v13, v9, v6

    add-int/lit8 v6, v8, 0x1

    ushr-int/lit8 v13, v4, 0x8

    and-int/lit8 v13, v13, 0xf

    .line 763
    aget-char v13, v10, v13

    aput-char v13, v9, v8

    add-int/lit8 v8, v6, 0x1

    ushr-int/lit8 v13, v4, 0x4

    and-int/lit8 v13, v13, 0xf

    .line 764
    aget-char v13, v10, v13

    aput-char v13, v9, v6

    add-int/lit8 v6, v8, 0x1

    and-int/lit8 v4, v4, 0xf

    .line 765
    aget-char v4, v10, v4

    aput-char v4, v9, v8

    goto :goto_19

    :cond_30
    add-int/lit8 v6, v10, 0x1

    .line 768
    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char v4, v8, v4

    aput-char v4, v9, v10

    :goto_19
    move v8, v6

    const/16 v10, 0x75

    goto :goto_1a

    :cond_31
    const/4 v12, 0x4

    if-ne v4, v5, :cond_32

    .line 773
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v8, 0x1

    aput-char v11, v6, v8

    add-int/lit8 v8, v9, 0x1

    const/16 v10, 0x75

    .line 774
    aput-char v10, v6, v9

    add-int/lit8 v9, v8, 0x1

    .line 775
    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DIGITS:[C

    ushr-int/lit8 v14, v4, 0xc

    and-int/lit8 v14, v14, 0xf

    aget-char v14, v13, v14

    aput-char v14, v6, v8

    add-int/lit8 v8, v9, 0x1

    ushr-int/lit8 v14, v4, 0x8

    and-int/lit8 v14, v14, 0xf

    .line 776
    aget-char v14, v13, v14

    aput-char v14, v6, v9

    add-int/lit8 v9, v8, 0x1

    ushr-int/lit8 v14, v4, 0x4

    and-int/lit8 v14, v14, 0xf

    .line 777
    aget-char v14, v13, v14

    aput-char v14, v6, v8

    add-int/lit8 v8, v9, 0x1

    and-int/lit8 v4, v4, 0xf

    .line 778
    aget-char v4, v13, v4

    aput-char v4, v6, v9

    goto :goto_1a

    :cond_32
    const/16 v10, 0x75

    .line 781
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v8, 0x1

    aput-char v4, v6, v8

    move v8, v9

    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_16

    :cond_33
    :goto_1b
    if-eqz v2, :cond_34

    .line 790
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v3, -0x2

    const/16 v5, 0x22

    aput-char v5, v1, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 791
    aput-char v2, v1, v3

    goto :goto_1c

    :cond_34
    const/4 v4, 0x1

    const/16 v5, 0x22

    .line 793
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v2, v4

    aput-char v5, v1, v2

    :goto_1c
    return-void
.end method

.method protected writeStringWithSingleQuote(Ljava/lang/String;)V
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 811
    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v1, 0x4

    add-int/2addr p1, v1

    .line 812
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le p1, v2, :cond_0

    .line 813
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 815
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const-string v4, "null"

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 816
    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void

    .line 820
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 821
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x2

    .line 822
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    const/16 v4, 0x2f

    const/16 v5, 0xd

    const/16 v6, 0x5c

    const/16 v7, 0x27

    if-le v2, v3, :cond_6

    .line 823
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_5

    .line 824
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 825
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 826
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-le v1, v5, :cond_3

    if-eq v1, v6, :cond_3

    if-eq v1, v7, :cond_3

    if-ne v1, v4, :cond_2

    .line 827
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    goto :goto_1

    .line 832
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 829
    :cond_3
    :goto_1
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 830
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 835
    :cond_4
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 838
    :cond_5
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 841
    :cond_6
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v3, 0x1

    add-int v9, v8, v1

    .line 844
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v7, v10, v3

    .line 845
    invoke-virtual {p1, v0, v1, v10, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 846
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 p1, -0x1

    move v3, v8

    const/4 v1, 0x0

    :goto_3
    if-ge v3, v9, :cond_9

    .line 852
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v10, v10, v3

    if-le v10, v5, :cond_7

    if-eq v10, v6, :cond_7

    if-eq v10, v7, :cond_7

    if-ne v10, v4, :cond_8

    .line 853
    iget v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v12, v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_8

    :cond_7
    add-int/lit8 v0, v0, 0x1

    move p1, v3

    move v1, v10

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    add-int/2addr v2, v0

    .line 862
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v2, v3, :cond_a

    .line 863
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 865
    :cond_a
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    .line 868
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p1, 0x2

    sub-int/2addr v9, p1

    sub-int/2addr v9, v2

    invoke-static {v0, v3, v0, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 869
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v6, v0, p1

    .line 870
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char p1, p1, v1

    aput-char p1, v0, v3

    goto :goto_5

    :cond_b
    if-le v0, v2, :cond_e

    .line 872
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v10, p1, 0x2

    sub-int v11, v9, p1

    sub-int/2addr v11, v2

    invoke-static {v0, v3, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 873
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v6, v0, p1

    .line 874
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char p1, p1, v1

    aput-char p1, v0, v3

    add-int/2addr v9, v2

    add-int/lit8 v3, v3, -0x2

    :goto_4
    if-lt v3, v8, :cond_e

    .line 877
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char p1, p1, v3

    if-le p1, v5, :cond_c

    if-eq p1, v6, :cond_c

    if-eq p1, v7, :cond_c

    if-ne p1, v4, :cond_d

    .line 879
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    .line 881
    :cond_c
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v10, v3, 0x2

    sub-int v11, v9, v3

    sub-int/2addr v11, v2

    invoke-static {v0, v1, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 882
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v6, v0, v3

    .line 883
    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    aget-char p1, v10, p1

    aput-char p1, v0, v1

    add-int/lit8 v9, v9, 0x1

    :cond_d
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 889
    :cond_e
    :goto_5
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v0, v2

    aput-char v7, p1, v0

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 228
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 225
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "writer not null"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeTo(Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    return-void

    .line 214
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "writer not null"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
