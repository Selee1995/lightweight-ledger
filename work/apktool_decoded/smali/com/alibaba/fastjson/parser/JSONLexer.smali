.class public final Lcom/alibaba/fastjson/parser/JSONLexer;
.super Ljava/lang/Object;
.source "JSONLexer.java"


# static fields
.field public static final CA:[C

.field public static final END:I = 0x4

.field public static final EOI:C = '\u001a'

.field static final IA:[I

.field public static final NOT_MATCH:I = -0x1

.field public static final NOT_MATCH_NAME:I = -0x2

.field public static final UNKNOWN:I = 0x0

.field private static V6:Z = false

.field public static final VALUE:I = 0x3

.field protected static final digits:[I

.field public static final firstIdentifierFlags:[Z

.field public static final identifierFlags:[Z

.field private static final sbufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field


# instance fields
.field protected bp:I

.field public calendar:Ljava/util/Calendar;

.field protected ch:C

.field public disableCircularReferenceDetect:Z

.field protected eofPos:I

.field protected exp:Z

.field public features:I

.field protected fieldHash:J

.field protected hasSpecial:Z

.field protected isDouble:Z

.field protected final len:I

.field public locale:Ljava/util/Locale;

.field public matchStat:I

.field protected np:I

.field protected pos:I

.field protected sbuf:[C

.field protected sp:I

.field protected stringDefaultValue:Ljava/lang/String;

.field protected final text:Ljava/lang/String;

.field public timeZone:Ljava/util/TimeZone;

.field protected token:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "android.os.Build$VERSION"

    .line 39
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SDK_INT"

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, -0x1

    :goto_0
    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 46
    :goto_1
    sput-boolean v1, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    .line 79
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    const/16 v1, 0x67

    new-array v1, v1, [I

    .line 1942
    sput-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    const/16 v1, 0x30

    const/16 v2, 0x30

    :goto_2
    const/16 v5, 0x39

    if-gt v2, v5, :cond_1

    .line 1946
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v6, v2, -0x30

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    const/16 v2, 0x61

    const/16 v6, 0x61

    :goto_3
    const/16 v7, 0x66

    if-gt v6, v7, :cond_2

    .line 1950
    sget-object v7, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v8, v6, -0x61

    add-int/lit8 v8, v8, 0xa

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    const/16 v6, 0x41

    const/16 v7, 0x41

    :goto_4
    const/16 v8, 0x46

    if-gt v7, v8, :cond_3

    .line 1953
    sget-object v8, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v9, v7, -0x41

    add-int/lit8 v9, v9, 0xa

    aput v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 4348
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    sput-object v7, Lcom/alibaba/fastjson/parser/JSONLexer;->CA:[C

    const/16 v8, 0x100

    new-array v9, v8, [I

    .line 4349
    sput-object v9, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    .line 4351
    invoke-static {v9, v0}, Ljava/util/Arrays;->fill([II)V

    .line 4352
    array-length v0, v7

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v0, :cond_4

    .line 4353
    sget-object v9, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    sget-object v10, Lcom/alibaba/fastjson/parser/JSONLexer;->CA:[C

    aget-char v10, v10, v7

    aput v7, v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 4355
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    const/16 v7, 0x3d

    aput v3, v0, v7

    new-array v0, v8, [Z

    .line 4414
    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    const/4 v0, 0x0

    .line 4416
    :goto_6
    sget-object v7, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    array-length v9, v7

    const/16 v10, 0x7a

    const/16 v11, 0x5f

    const/16 v12, 0x5a

    if-ge v0, v9, :cond_8

    if-lt v0, v6, :cond_5

    if-gt v0, v12, :cond_5

    .line 4418
    aput-boolean v4, v7, v0

    goto :goto_7

    :cond_5
    if-lt v0, v2, :cond_6

    if-gt v0, v10, :cond_6

    .line 4420
    aput-boolean v4, v7, v0

    goto :goto_7

    :cond_6
    if-ne v0, v11, :cond_7

    .line 4422
    aput-boolean v4, v7, v0

    :cond_7
    :goto_7
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_6

    :cond_8
    new-array v0, v8, [Z

    .line 4427
    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    .line 4430
    :goto_8
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    array-length v7, v0

    if-ge v3, v7, :cond_d

    if-lt v3, v6, :cond_9

    if-gt v3, v12, :cond_9

    .line 4432
    aput-boolean v4, v0, v3

    goto :goto_9

    :cond_9
    if-lt v3, v2, :cond_a

    if-gt v3, v10, :cond_a

    .line 4434
    aput-boolean v4, v0, v3

    goto :goto_9

    :cond_a
    if-ne v3, v11, :cond_b

    .line 4436
    aput-boolean v4, v0, v3

    goto :goto_9

    :cond_b
    if-lt v3, v1, :cond_c

    if-gt v3, v5, :cond_c

    .line 4438
    aput-boolean v4, v0, v3

    :cond_c
    :goto_9
    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    goto :goto_8

    :cond_d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 90
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    .line 64
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    .line 73
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    .line 74
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 77
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 102
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    if-nez v2, :cond_0

    const/16 v2, 0x200

    new-array v2, v2, [C

    .line 105
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 108
    :cond_0
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    .line 110
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/4 v3, -0x1

    .line 112
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 116
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    if-lt v3, v2, :cond_1

    const/16 p1, 0x1a

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_0
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const v2, 0xfeff

    if-ne p1, v2, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 125
    :cond_2
    sget-object p1, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget p1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_3

    const-string v1, ""

    :cond_3
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    .line 128
    sget-object p1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    iget p1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1

    .line 94
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static checkDate(CCCCCCII)Z
    .locals 4

    const/16 v0, 0x32

    const/16 v1, 0x31

    const/4 v2, 0x0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    return v2

    :cond_0
    const/16 p0, 0x30

    if-lt p1, p0, :cond_d

    const/16 v3, 0x39

    if-le p1, v3, :cond_1

    goto :goto_1

    :cond_1
    if-lt p2, p0, :cond_d

    if-le p2, v3, :cond_2

    goto :goto_1

    :cond_2
    if-lt p3, p0, :cond_d

    if-le p3, v3, :cond_3

    goto :goto_1

    :cond_3
    if-ne p4, p0, :cond_5

    if-lt p5, v1, :cond_4

    if-le p5, v3, :cond_6

    :cond_4
    return v2

    :cond_5
    if-ne p4, v1, :cond_d

    if-eq p5, p0, :cond_6

    if-eq p5, v1, :cond_6

    if-eq p5, v0, :cond_6

    return v2

    :cond_6
    if-ne p6, p0, :cond_8

    if-lt p7, v1, :cond_7

    if-le p7, v3, :cond_c

    :cond_7
    return v2

    :cond_8
    if-eq p6, v1, :cond_b

    if-ne p6, v0, :cond_9

    goto :goto_0

    :cond_9
    const/16 p1, 0x33

    if-ne p6, p1, :cond_a

    if-eq p7, p0, :cond_c

    if-eq p7, v1, :cond_c

    :cond_a
    return v2

    :cond_b
    :goto_0
    if-lt p7, p0, :cond_d

    if-le p7, v3, :cond_c

    goto :goto_1

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_1
    return v2
.end method

.method static checkTime(CCCCCC)Z
    .locals 4

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/16 v2, 0x30

    if-ne p0, v2, :cond_1

    if-lt p1, v2, :cond_0

    if-le p1, v0, :cond_4

    :cond_0
    return v1

    :cond_1
    const/16 v3, 0x31

    if-ne p0, v3, :cond_3

    if-lt p1, v2, :cond_2

    if-le p1, v0, :cond_4

    :cond_2
    return v1

    :cond_3
    const/16 v3, 0x32

    if-ne p0, v3, :cond_b

    if-lt p1, v2, :cond_b

    const/16 p0, 0x34

    if-le p1, p0, :cond_4

    goto :goto_0

    :cond_4
    const/16 p0, 0x35

    const/16 p1, 0x36

    if-lt p2, v2, :cond_6

    if-gt p2, p0, :cond_6

    if-lt p3, v2, :cond_5

    if-le p3, v0, :cond_7

    :cond_5
    return v1

    :cond_6
    if-ne p2, p1, :cond_b

    if-eq p3, v2, :cond_7

    return v1

    :cond_7
    if-lt p4, v2, :cond_9

    if-gt p4, p0, :cond_9

    if-lt p5, v2, :cond_8

    if-le p5, v0, :cond_a

    :cond_8
    return v1

    :cond_9
    if-ne p4, p1, :cond_b

    if-eq p5, v2, :cond_a

    return v1

    :cond_a
    const/4 p0, 0x1

    return p0

    :cond_b
    :goto_0
    return v1
.end method

.method public static final decodeFast(Ljava/lang/String;II)[B
    .locals 12

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p0, v0, [B

    return-object p0

    :cond_0
    add-int v1, p1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ge p1, v1, :cond_1

    .line 4367
    sget-object v3, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v3, v3, v4

    if-gez v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v1, :cond_2

    .line 4371
    sget-object v3, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v3, v3, v4

    if-gez v3, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 4375
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_4

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3

    const/4 v3, 0x2

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    sub-int v4, v1, p1

    add-int/2addr v4, v2

    const/16 v5, 0x4c

    if-le p2, v5, :cond_6

    .line 4377
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v5, 0xd

    if-ne p2, v5, :cond_5

    div-int/lit8 p2, v4, 0x4e

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    :goto_3
    shl-int/2addr p2, v2

    goto :goto_4

    :cond_6
    const/4 p2, 0x0

    :goto_4
    sub-int/2addr v4, p2

    mul-int/lit8 v4, v4, 0x6

    shr-int/lit8 v4, v4, 0x3

    sub-int/2addr v4, v3

    .line 4380
    new-array v5, v4, [B

    .line 4384
    div-int/lit8 v6, v4, 0x3

    mul-int/lit8 v6, v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_5
    if-ge v7, v6, :cond_8

    .line 4386
    sget-object v9, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v10, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    aget p1, v9, p1

    shl-int/lit8 p1, p1, 0x12

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aget v10, v9, v10

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr p1, v10

    add-int/lit8 v10, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v11, v9, v11

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr p1, v11

    add-int/lit8 v11, v10, 0x1

    .line 4387
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aget v9, v9, v10

    or-int/2addr p1, v9

    add-int/lit8 v9, v7, 0x1

    shr-int/lit8 v10, p1, 0x10

    int-to-byte v10, v10

    .line 4390
    aput-byte v10, v5, v7

    add-int/lit8 v7, v9, 0x1

    shr-int/lit8 v10, p1, 0x8

    int-to-byte v10, v10

    .line 4391
    aput-byte v10, v5, v9

    add-int/lit8 v9, v7, 0x1

    int-to-byte p1, p1

    .line 4392
    aput-byte p1, v5, v7

    if-lez p2, :cond_7

    add-int/lit8 v8, v8, 0x1

    const/16 p1, 0x13

    if-ne v8, p1, :cond_7

    add-int/lit8 v11, v11, 0x2

    move p1, v11

    const/4 v8, 0x0

    goto :goto_6

    :cond_7
    move p1, v11

    :goto_6
    move v7, v9

    goto :goto_5

    :cond_8
    if-ge v7, v4, :cond_a

    const/4 p2, 0x0

    :goto_7
    sub-int v6, v1, v3

    if-gt p1, v6, :cond_9

    .line 4405
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v8, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    aget p1, v6, p1

    mul-int/lit8 v6, p2, 0x6

    rsub-int/lit8 v6, v6, 0x12

    shl-int/2addr p1, v6

    or-int/2addr v0, p1

    add-int/2addr p2, v2

    move p1, v8

    goto :goto_7

    :cond_9
    const/16 p0, 0x10

    :goto_8
    if-ge v7, v4, :cond_a

    add-int/lit8 p1, v7, 0x1

    shr-int p2, v0, p0

    int-to-byte p2, p2

    .line 4408
    aput-byte p2, v5, v7

    add-int/lit8 p0, p0, -0x8

    move v7, p1

    goto :goto_8

    :cond_a
    return-object v5
.end method

.method private matchFieldHash(J)I
    .locals 17

    move-object/from16 v0, p0

    .line 2058
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2059
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x1

    :goto_0
    const/16 v5, 0x22

    const/16 v10, 0xa

    const/4 v11, 0x0

    const/4 v12, -0x2

    const/16 v13, 0x1a

    const/16 v14, 0x20

    if-ne v1, v5, :cond_0

    goto :goto_1

    :cond_0
    const/16 v5, 0x27

    if-ne v1, v5, :cond_9

    :goto_1
    const-wide/32 v15, -0x7ee3623b

    move-wide v6, v15

    move v15, v2

    .line 2084
    :goto_2
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v15, v5, :cond_2

    .line 2085
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_1

    sub-int/2addr v15, v2

    add-int/2addr v4, v15

    goto :goto_3

    :cond_1
    int-to-long v8, v5

    xor-long/2addr v6, v8

    const-wide/32 v8, 0x1000193

    mul-long v6, v6, v8

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    cmp-long v1, v6, p1

    if-eqz v1, :cond_3

    .line 2097
    iput-wide v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 2098
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v11

    .line 2102
    :cond_3
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v3

    add-int/2addr v1, v4

    .line 2103
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_4

    const/16 v1, 0x1a

    goto :goto_4

    :cond_4
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2105
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_4
    const/16 v2, 0x3a

    if-ne v1, v2, :cond_5

    add-int/2addr v4, v3

    return v4

    :cond_5
    if-gt v1, v14, :cond_8

    if-eq v1, v14, :cond_6

    if-eq v1, v10, :cond_6

    const/16 v2, 0xd

    if-eq v1, v2, :cond_6

    const/16 v2, 0x9

    if-eq v1, v2, :cond_6

    const/16 v2, 0xc

    if-eq v1, v2, :cond_6

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 2119
    :cond_6
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v4, 0x1

    add-int/2addr v1, v4

    .line 2120
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_7

    const/16 v1, 0x1a

    goto :goto_5

    :cond_7
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2122
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_5
    move v4, v2

    goto :goto_4

    .line 2126
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "match feild error expect \':\'"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    if-gt v1, v14, :cond_c

    if-eq v1, v14, :cond_a

    if-eq v1, v10, :cond_a

    const/16 v6, 0xd

    if-eq v1, v6, :cond_a

    const/16 v6, 0x9

    if-eq v1, v6, :cond_a

    const/16 v6, 0xc

    if-eq v1, v6, :cond_a

    const/16 v5, 0x8

    if-ne v1, v5, :cond_c

    .line 2072
    :cond_a
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v4, 0x1

    add-int/2addr v1, v4

    .line 2073
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_b

    const/16 v1, 0x1a

    goto :goto_6

    :cond_b
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2075
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_6
    move v4, v5

    goto/16 :goto_0

    :cond_c
    const-wide/16 v1, 0x0

    .line 2077
    iput-wide v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 2078
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v11
.end method

.method private static readString([CI)Ljava/lang/String;
    .locals 12

    .line 825
    new-array v0, p1, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_9

    .line 828
    aget-char v4, p0, v2

    const/16 v5, 0x5c

    const/4 v6, 0x1

    if-eq v4, v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 831
    aput-char v4, v0, v3

    move v3, v5

    goto/16 :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 834
    aget-char v4, p0, v2

    const/16 v7, 0x22

    if-eq v4, v7, :cond_8

    const/16 v7, 0x27

    if-eq v4, v7, :cond_7

    const/16 v7, 0x46

    if-eq v4, v7, :cond_6

    if-eq v4, v5, :cond_5

    const/16 v5, 0x62

    if-eq v4, v5, :cond_4

    const/16 v5, 0x66

    if-eq v4, v5, :cond_6

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_3

    const/16 v5, 0x72

    if-eq v4, v5, :cond_2

    const/16 v5, 0x78

    const/16 v7, 0x10

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    .line 903
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string p1, "unclosed.str.lit"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xb

    .line 871
    aput-char v5, v0, v3

    goto/16 :goto_1

    :pswitch_1
    add-int/lit8 v4, v3, 0x1

    .line 896
    new-instance v10, Ljava/lang/String;

    new-array v5, v5, [C

    add-int/lit8 v2, v2, 0x1

    aget-char v11, p0, v2

    aput-char v11, v5, v1

    add-int/2addr v2, v6

    aget-char v11, p0, v2

    aput-char v11, v5, v6

    add-int/2addr v2, v6

    aget-char v11, p0, v2

    aput-char v11, v5, v9

    add-int/2addr v2, v6

    aget-char v9, p0, v2

    aput-char v9, v5, v8

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([C)V

    invoke-static {v10, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v0, v3

    goto/16 :goto_1

    :pswitch_2
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x9

    .line 865
    aput-char v5, v0, v3

    goto/16 :goto_1

    :pswitch_3
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x7

    .line 859
    aput-char v5, v0, v3

    goto/16 :goto_1

    :pswitch_4
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x6

    .line 856
    aput-char v5, v0, v3

    goto/16 :goto_1

    :pswitch_5
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x5

    .line 853
    aput-char v5, v0, v3

    goto :goto_1

    :pswitch_6
    add-int/lit8 v4, v3, 0x1

    .line 850
    aput-char v5, v0, v3

    goto :goto_1

    :pswitch_7
    add-int/lit8 v4, v3, 0x1

    .line 847
    aput-char v8, v0, v3

    goto :goto_1

    :pswitch_8
    add-int/lit8 v4, v3, 0x1

    .line 844
    aput-char v9, v0, v3

    goto :goto_1

    :pswitch_9
    add-int/lit8 v4, v3, 0x1

    .line 841
    aput-char v6, v0, v3

    goto :goto_1

    :pswitch_a
    add-int/lit8 v4, v3, 0x1

    .line 838
    aput-char v1, v0, v3

    goto :goto_1

    :pswitch_b
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x2f

    .line 887
    aput-char v5, v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v3, 0x1

    .line 893
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v2, v2, 0x1

    aget-char v8, p0, v2

    aget v8, v5, v8

    mul-int/lit8 v8, v8, 0x10

    add-int/2addr v2, v6

    aget-char v7, p0, v2

    aget v5, v5, v7

    add-int/2addr v8, v5

    int-to-char v5, v8

    aput-char v5, v0, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xd

    .line 878
    aput-char v5, v0, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xa

    .line 868
    aput-char v5, v0, v3

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x8

    .line 862
    aput-char v5, v0, v3

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v3, 0x1

    .line 890
    aput-char v5, v0, v3

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xc

    .line 875
    aput-char v5, v0, v3

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v3, 0x1

    .line 884
    aput-char v7, v0, v3

    goto :goto_1

    :cond_8
    add-int/lit8 v4, v3, 0x1

    .line 881
    aput-char v7, v0, v3

    :goto_1
    move v3, v4

    :goto_2
    add-int/2addr v2, v6

    goto/16 :goto_0

    .line 906
    :cond_9
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private scanIdent()V
    .locals 2

    .line 1183
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    const/4 v0, 0x0

    .line 1184
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    .line 1187
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1189
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1190
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1194
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    .line 1196
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    .line 1197
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_1
    const-string v1, "true"

    .line 1198
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x6

    .line 1199
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_2
    const-string v1, "false"

    .line 1200
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x7

    .line 1201
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_3
    const-string v1, "new"

    .line 1202
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x9

    .line 1203
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_4
    const-string v1, "undefined"

    .line 1204
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v0, 0x17

    .line 1205
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_5
    const-string v1, "Set"

    .line 1206
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x15

    .line 1207
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_6
    const-string v1, "TreeSet"

    .line 1208
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x16

    .line 1209
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_7
    const/16 v0, 0x12

    .line 1211
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :goto_1
    return-void
.end method

.method private setCalendar(CCCCCCCC)V
    .locals 2

    .line 4293
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    add-int/lit8 p1, p1, -0x30

    mul-int/lit16 p1, p1, 0x3e8

    add-int/lit8 p2, p2, -0x30

    mul-int/lit8 p2, p2, 0x64

    add-int/2addr p1, p2

    add-int/lit8 p3, p3, -0x30

    mul-int/lit8 p3, p3, 0xa

    add-int/2addr p1, p3

    add-int/lit8 p4, p4, -0x30

    add-int/2addr p1, p4

    add-int/lit8 p5, p5, -0x30

    mul-int/lit8 p5, p5, 0xa

    add-int/lit8 p6, p6, -0x30

    add-int/2addr p5, p6

    const/4 p2, 0x1

    sub-int/2addr p5, p2

    add-int/lit8 p7, p7, -0x30

    mul-int/lit8 p7, p7, 0xa

    add-int/lit8 p8, p8, -0x30

    add-int/2addr p7, p8

    .line 4297
    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->set(II)V

    .line 4298
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    .line 4299
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p7}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method private final subString(II)Ljava/lang/String;
    .locals 4

    .line 1225
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v1, v0

    const/4 v2, 0x0

    if-ge p2, v1, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v3, p1, p2

    invoke-virtual {v1, p1, v3, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1227
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-direct {p1, v0, v2, p2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 1229
    :cond_0
    new-array v0, p2, [C

    .line 1230
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v1, p1, p2, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1231
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method


# virtual methods
.method public bytesValue()[B
    .locals 3

    .line 1179
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->decodeFast(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method protected charAt(I)C
    .locals 1

    .line 216
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_0

    const/16 p1, 0x1a

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_0
    return p1
.end method

.method public close()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v1, v0

    const/16 v2, 0x2004

    if-gt v1, v2, :cond_0

    .line 137
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    return-void
.end method

.method public final config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 151
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    goto :goto_0

    .line 153
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    .line 156
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    const-string p1, ""

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 157
    :goto_1
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    .line 161
    :cond_2
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object p2, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    iget p2, p2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    return-void
.end method

.method public final decimalValue(Z)Ljava/lang/Number;
    .locals 8

    .line 1825
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1826
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1828
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    const/16 v2, 0x46

    if-ne v0, v2, :cond_1

    .line 1831
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    const/16 v3, 0x44

    if-ne v0, v3, :cond_2

    .line 1835
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 1839
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 1841
    :cond_3
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr p1, v0

    sub-int/2addr p1, v1

    .line 1842
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 1844
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/16 v4, 0x4c

    if-eq p1, v4, :cond_4

    const/16 v4, 0x53

    if-eq p1, v4, :cond_4

    const/16 v4, 0x42

    if-eq p1, v4, :cond_4

    if-eq p1, v2, :cond_4

    if-ne p1, v3, :cond_5

    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 1856
    :cond_5
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1858
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v0, v3, :cond_6

    .line 1859
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v5, p1, v0

    invoke-virtual {v3, p1, v5, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1860
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    goto :goto_1

    .line 1862
    :cond_6
    new-array v2, v0, [C

    .line 1863
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v5, p1, v0

    invoke-virtual {v3, p1, v5, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    move-object p1, v2

    :goto_1
    const/16 v2, 0x9

    if-gt v0, v2, :cond_d

    .line 1866
    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    if-nez v2, :cond_d

    .line 1870
    aget-char v2, p1, v4

    const/16 v3, 0x2d

    const/4 v5, 0x2

    if-ne v2, v3, :cond_7

    .line 1874
    aget-char v2, p1, v1

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/16 v3, 0x2b

    if-ne v2, v3, :cond_8

    .line 1877
    aget-char v2, p1, v1

    const/4 v3, 0x0

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    const/4 v5, 0x1

    :goto_2
    add-int/lit8 v2, v2, -0x30

    :goto_3
    if-ge v5, v0, :cond_b

    .line 1886
    aget-char v6, p1, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_9

    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v6, v6, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v6

    if-eqz v4, :cond_a

    mul-int/lit8 v4, v4, 0xa

    :cond_a
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    int-to-double v0, v2

    int-to-double v4, v4

    .line 1900
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    if-eqz v3, :cond_c

    neg-double v0, v0

    .line 1905
    :cond_c
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 1907
    :cond_d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v4, v0}, Ljava/lang/String;-><init>([CII)V

    .line 1909
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 1912
    :goto_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 6

    .line 1917
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 1918
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1920
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 1931
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1932
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_2

    .line 1933
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v5, v0, v1

    invoke-virtual {v3, v0, v5, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1934
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-direct {v0, v2, v4, v1}, Ljava/math/BigDecimal;-><init>([CII)V

    return-object v0

    .line 1936
    :cond_2
    new-array v2, v1, [C

    .line 1937
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/2addr v1, v0

    invoke-virtual {v3, v0, v1, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1938
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>([C)V

    return-object v0
.end method

.method public info()Ljava/lang/String;
    .locals 4

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", json : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const/4 v3, 0x0

    .line 914
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final intValue()I
    .locals 10

    .line 1119
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v1, v0

    .line 1123
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v3, 0x1a

    if-lt v0, v2, :cond_0

    const/16 v2, 0x1a

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1125
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    const/16 v4, 0x2d

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v4, :cond_1

    const/high16 v2, -0x80000000

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const v2, -0x7fffffff

    const/4 v4, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    add-int/lit8 v5, v0, 0x1

    .line 1136
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v7, :cond_2

    const/16 v0, 0x1a

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1138
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_2
    add-int/lit8 v0, v0, -0x30

    neg-int v0, v0

    move v9, v5

    move v5, v0

    move v0, v9

    :cond_3
    :goto_3
    if-ge v0, v1, :cond_9

    add-int/lit8 v7, v0, 0x1

    .line 1147
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v8, :cond_4

    const/16 v0, 0x1a

    goto :goto_4

    :cond_4
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1149
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_4
    const/16 v8, 0x4c

    if-eq v0, v8, :cond_8

    const/16 v8, 0x53

    if-eq v0, v8, :cond_8

    const/16 v8, 0x42

    if-ne v0, v8, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v0, -0x30

    const v8, -0xccccccc

    if-lt v5, v8, :cond_7

    mul-int/lit8 v5, v5, 0xa

    add-int v8, v2, v0

    if-lt v5, v8, :cond_6

    sub-int/2addr v5, v0

    move v0, v7

    goto :goto_3

    .line 1162
    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1158
    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_5
    move v0, v7

    :cond_9
    if-eqz v4, :cond_b

    .line 1168
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v1, v6

    if-le v0, v1, :cond_a

    return v5

    .line 1171
    :cond_a
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    neg-int v0, v5

    return v0
.end method

.method public final integerValue()Ljava/lang/Number;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 606
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v2, v1

    add-int/lit8 v3, v2, -0x1

    .line 613
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v4, :cond_0

    const/16 v3, 0x1a

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 615
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_0
    const/16 v4, 0x53

    const/16 v6, 0x4c

    const/16 v7, 0x42

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_2

    if-eq v3, v4, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x53

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x4c

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x42

    .line 634
    :goto_1
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v9, :cond_4

    const/16 v8, 0x1a

    goto :goto_2

    :cond_4
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 636
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_2
    const/16 v9, 0x2d

    const/4 v10, 0x1

    if-ne v8, v9, :cond_5

    const-wide/high16 v8, -0x8000000000000000L

    add-int/lit8 v1, v1, 0x1

    const/4 v11, 0x1

    goto :goto_3

    :cond_5
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, 0x0

    :goto_3
    if-ge v1, v2, :cond_7

    add-int/lit8 v12, v1, 0x1

    .line 646
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v13, :cond_6

    const/16 v1, 0x1a

    goto :goto_4

    :cond_6
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 648
    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_4
    add-int/lit8 v1, v1, -0x30

    neg-int v1, v1

    int-to-long v13, v1

    move v1, v12

    goto :goto_5

    :cond_7
    const-wide/16 v13, 0x0

    :goto_5
    if-ge v1, v2, :cond_b

    add-int/lit8 v12, v1, 0x1

    .line 655
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v15, :cond_8

    const/16 v1, 0x1a

    goto :goto_6

    :cond_8
    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 657
    invoke-virtual {v15, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_6
    add-int/lit8 v1, v1, -0x30

    const-wide v15, -0xcccccccccccccccL

    cmp-long v17, v13, v15

    if-gez v17, :cond_9

    .line 660
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_9
    const-wide/16 v15, 0xa

    mul-long v13, v13, v15

    int-to-long v4, v1

    add-long v17, v8, v4

    cmp-long v1, v13, v17

    if-gez v1, :cond_a

    .line 664
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_a
    sub-long/2addr v13, v4

    move v1, v12

    const/16 v4, 0x53

    goto :goto_5

    :cond_b
    if-eqz v11, :cond_10

    .line 670
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v2, v10

    if-le v1, v2, :cond_f

    const-wide/32 v1, -0x80000000

    cmp-long v4, v13, v1

    if-ltz v4, :cond_e

    if-eq v3, v6, :cond_e

    const/16 v1, 0x53

    if-ne v3, v1, :cond_c

    long-to-int v1, v13

    int-to-short v1, v1

    .line 673
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    :cond_c
    if-ne v3, v7, :cond_d

    long-to-int v1, v13

    int-to-byte v1, v1

    .line 677
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    :cond_d
    long-to-int v1, v13

    .line 680
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 682
    :cond_e
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 684
    :cond_f
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    neg-long v1, v13

    const-wide/32 v4, 0x7fffffff

    cmp-long v8, v1, v4

    if-gtz v8, :cond_13

    if-eq v3, v6, :cond_13

    const/16 v4, 0x53

    if-ne v3, v4, :cond_11

    long-to-int v2, v1

    int-to-short v1, v2

    .line 690
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    :cond_11
    if-ne v3, v7, :cond_12

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 692
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    :cond_12
    long-to-int v2, v1

    .line 694
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 697
    :cond_13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public final isBlankInput()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1248
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/16 v3, 0x1a

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    return v4

    :cond_0
    const/16 v3, 0x20

    if-gt v2, v3, :cond_1

    if-eq v2, v3, :cond_2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1

    .line 165
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iget p1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final longValue()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1768
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v1, v0

    .line 1773
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_0

    const-wide/high16 v4, -0x8000000000000000L

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    add-int/lit8 v6, v0, 0x1

    .line 1781
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    neg-int v0, v0

    int-to-long v7, v0

    :goto_1
    move v0, v6

    goto :goto_2

    :cond_1
    const-wide/16 v7, 0x0

    :goto_2
    if-ge v0, v1, :cond_7

    add-int/lit8 v6, v0, 0x1

    .line 1790
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v9, :cond_2

    const/16 v0, 0x1a

    goto :goto_3

    :cond_2
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1792
    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_3
    const/16 v9, 0x4c

    if-eq v0, v9, :cond_6

    const/16 v9, 0x53

    if-eq v0, v9, :cond_6

    const/16 v9, 0x42

    if-ne v0, v9, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, -0x30

    const-wide v9, -0xcccccccccccccccL

    cmp-long v11, v7, v9

    if-ltz v11, :cond_5

    const-wide/16 v9, 0xa

    mul-long v7, v7, v9

    int-to-long v9, v0

    add-long v11, v4, v9

    cmp-long v0, v7, v11

    if-ltz v0, :cond_4

    sub-long/2addr v7, v9

    goto :goto_1

    .line 1807
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1803
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_4
    move v0, v6

    :cond_7
    if-eqz v2, :cond_9

    .line 1813
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v1, v3

    if-le v0, v1, :cond_8

    return-wide v7

    .line 1816
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    neg-long v0, v7

    return-wide v0
.end method

.method public matchField(J)Z
    .locals 17

    move-object/from16 v0, p0

    .line 1959
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1960
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x1

    :goto_0
    const/16 v5, 0x22

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v11, -0x2

    const/16 v12, 0xc

    const/16 v13, 0x20

    if-ne v1, v5, :cond_0

    goto :goto_1

    :cond_0
    const/16 v5, 0x27

    if-ne v1, v5, :cond_f

    :goto_1
    const-wide/32 v15, -0x7ee3623b

    move v5, v2

    move-wide v14, v15

    .line 1985
    :goto_2
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v5, v6, :cond_2

    .line 1986
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v1, :cond_1

    sub-int/2addr v5, v2

    add-int/2addr v5, v3

    add-int/2addr v4, v5

    goto :goto_3

    :cond_1
    int-to-long v7, v6

    xor-long/2addr v7, v14

    const-wide/32 v14, 0x1000193

    mul-long v14, v14, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    cmp-long v1, v14, p1

    if-eqz v1, :cond_3

    .line 1998
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1999
    iput-wide v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    return v10

    .line 2003
    :cond_3
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v4, 0x1

    add-int/2addr v1, v4

    .line 2004
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_4

    const/16 v1, 0x1a

    goto :goto_4

    :cond_4
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2006
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_4
    const/16 v4, 0x3a

    if-ne v1, v4, :cond_b

    .line 2009
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v2

    .line 2010
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_5

    const/16 v2, 0x1a

    goto :goto_5

    :cond_5
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2012
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_5
    const/16 v4, 0x7b

    if-ne v2, v4, :cond_7

    add-int/2addr v1, v3

    .line 2034
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2035
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_6

    const/16 v14, 0x1a

    goto :goto_6

    :cond_6
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2037
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    :goto_6
    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2038
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_9

    :cond_7
    const/16 v4, 0x5b

    if-ne v2, v4, :cond_9

    add-int/2addr v1, v3

    .line 2040
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2041
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_8

    const/16 v14, 0x1a

    goto :goto_7

    :cond_8
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2043
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    :goto_7
    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xe

    .line 2044
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_9

    .line 2046
    :cond_9
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2047
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_a

    const/16 v14, 0x1a

    goto :goto_8

    :cond_a
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2049
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    :goto_8
    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2050
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_9
    return v3

    :cond_b
    if-gt v1, v13, :cond_e

    if-eq v1, v13, :cond_c

    if-eq v1, v9, :cond_c

    const/16 v4, 0xd

    if-eq v1, v4, :cond_c

    const/16 v4, 0x9

    if-eq v1, v4, :cond_c

    if-eq v1, v12, :cond_c

    const/16 v4, 0x8

    if-ne v1, v4, :cond_e

    .line 2023
    :cond_c
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v2, 0x1

    add-int/2addr v1, v2

    .line 2024
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_d

    const/16 v1, 0x1a

    goto :goto_a

    :cond_d
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2026
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_a
    move v2, v4

    goto/16 :goto_4

    .line 2030
    :cond_e
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "match feild error expect \':\'"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    if-gt v1, v13, :cond_12

    if-eq v1, v13, :cond_10

    if-eq v1, v9, :cond_10

    const/16 v5, 0xd

    if-eq v1, v5, :cond_10

    const/16 v5, 0x9

    if-eq v1, v5, :cond_10

    if-eq v1, v12, :cond_10

    const/16 v5, 0x8

    if-ne v1, v5, :cond_12

    .line 1973
    :cond_10
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v4, 0x1

    add-int/2addr v1, v4

    .line 1974
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_11

    const/16 v1, 0x1a

    goto :goto_b

    :cond_11
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1976
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_b
    move v4, v5

    goto/16 :goto_0

    :cond_12
    const-wide/16 v1, 0x0

    .line 1978
    iput-wide v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 1979
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v10
.end method

.method public next()C
    .locals 2

    .line 143
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 144
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return v0
.end method

.method public final nextIdent()V
    .locals 2

    .line 582
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x20

    if-gt v0, v1, :cond_1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_4

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_3

    .line 596
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 599
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_3

    .line 597
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanIdent()V

    :goto_3
    return-void

    .line 592
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0
.end method

.method public final nextToken()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 222
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 225
    :goto_0
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 227
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipComment()V

    goto :goto_0

    :cond_0
    const/16 v4, 0x22

    if-ne v3, v4, :cond_1

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    return-void

    :cond_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_3

    :cond_2
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_4

    .line 238
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    return-void

    :cond_4
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_5

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v1, 0x10

    .line 244
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    :cond_5
    const/16 v5, 0xc

    if-eq v3, v5, :cond_20

    const/16 v6, 0xd

    if-eq v3, v6, :cond_20

    const/16 v7, 0x20

    if-eq v3, v7, :cond_20

    const/16 v8, 0x3a

    if-eq v3, v8, :cond_1f

    const/16 v9, 0x5b

    const/4 v10, 0x1

    const/16 v11, 0x1a

    if-eq v3, v9, :cond_1d

    const/16 v9, 0x5d

    if-eq v3, v9, :cond_1c

    const/16 v12, 0x66

    const/16 v13, 0x9

    const/16 v14, 0x8

    const/16 v15, 0xa

    const/16 v1, 0x7d

    if-eq v3, v12, :cond_19

    const/16 v12, 0x6e

    if-eq v3, v12, :cond_14

    const/16 v12, 0x7b

    if-eq v3, v12, :cond_12

    if-eq v3, v1, :cond_10

    const/16 v12, 0x53

    if-eq v3, v12, :cond_f

    const/16 v12, 0x54

    if-eq v3, v12, :cond_f

    const/16 v12, 0x74

    if-eq v3, v12, :cond_c

    const/16 v1, 0x75

    if-eq v3, v1, :cond_f

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    .line 388
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-eq v2, v1, :cond_7

    if-ne v3, v11, :cond_6

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_9

    .line 390
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_8

    .line 394
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 395
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->eofPos:I

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    goto :goto_3

    .line 391
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "EOF error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    const/16 v1, 0x1f

    if-le v3, v1, :cond_b

    const/16 v1, 0x7f

    if-ne v3, v1, :cond_a

    goto :goto_4

    .line 401
    :cond_a
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :goto_3
    return-void

    .line 398
    :cond_b
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_9

    .line 346
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v1, 0xb

    .line 347
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 342
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 343
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 250
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    return-void

    .line 262
    :cond_c
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v10, "true"

    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 263
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 264
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v2, v7, :cond_d

    if-eq v2, v4, :cond_d

    if-eq v2, v1, :cond_d

    if-eq v2, v9, :cond_d

    if-eq v2, v15, :cond_d

    if-eq v2, v6, :cond_d

    if-eq v2, v13, :cond_d

    if-eq v2, v11, :cond_d

    if-eq v2, v5, :cond_d

    if-eq v2, v14, :cond_d

    if-ne v2, v8, :cond_e

    :cond_d
    const/4 v1, 0x6

    .line 277
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 281
    :cond_e
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "scan true error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanIdent()V

    return-void

    :cond_10
    add-int/2addr v2, v10

    .line 376
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 377
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v1, :cond_11

    goto :goto_5

    :cond_11
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_5
    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 381
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    :cond_12
    add-int/2addr v2, v10

    .line 366
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 367
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v1, :cond_13

    goto :goto_6

    :cond_13
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 369
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_6
    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 371
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 314
    :cond_14
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v8, "null"

    invoke-virtual {v3, v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 315
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v2, 0x8

    goto :goto_7

    .line 317
    :cond_15
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const-string v8, "new"

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 318
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v2, 0x9

    goto :goto_7

    :cond_16
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_18

    .line 323
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v3, v7, :cond_17

    if-eq v3, v4, :cond_17

    if-eq v3, v1, :cond_17

    if-eq v3, v9, :cond_17

    if-eq v3, v15, :cond_17

    if-eq v3, v6, :cond_17

    if-eq v3, v13, :cond_17

    if-eq v3, v11, :cond_17

    if-eq v3, v5, :cond_17

    if-ne v3, v14, :cond_18

    .line 334
    :cond_17
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 339
    :cond_18
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "scan null/new error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 290
    :cond_19
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v10, "false"

    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 291
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x5

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 292
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v2, v7, :cond_1a

    if-eq v2, v4, :cond_1a

    if-eq v2, v1, :cond_1a

    if-eq v2, v9, :cond_1a

    if-eq v2, v15, :cond_1a

    if-eq v2, v6, :cond_1a

    if-eq v2, v13, :cond_1a

    if-eq v2, v11, :cond_1a

    if-eq v2, v5, :cond_1a

    if-eq v2, v14, :cond_1a

    if-ne v2, v8, :cond_1b

    :cond_1a
    const/4 v1, 0x7

    .line 305
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 309
    :cond_1b
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "scan false error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 360
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v1, 0xf

    .line 361
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    :cond_1d
    add-int/2addr v2, v10

    .line 352
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 353
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v1, :cond_1e

    goto :goto_8

    :cond_1e
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_8
    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xe

    .line 357
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 384
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v1, 0x11

    .line 385
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 258
    :cond_20
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :goto_9
    const/4 v1, 0x0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final nextToken(I)V
    .locals 10

    const/4 v0, 0x0

    .line 412
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    :goto_0
    const/4 v0, 0x2

    const/16 v1, 0xd

    const/16 v2, 0x39

    const/16 v3, 0x22

    const/16 v4, 0x30

    const/16 v5, 0xe

    const/16 v6, 0x5b

    const/16 v7, 0x7b

    const/16 v8, 0xc

    if-eq p1, v0, :cond_11

    const/4 v0, 0x4

    const/16 v9, 0x1a

    if-eq p1, v0, :cond_d

    if-eq p1, v8, :cond_9

    const/16 v0, 0x12

    if-eq p1, v0, :cond_8

    const/16 v0, 0x14

    if-eq p1, v0, :cond_7

    const/16 v2, 0xf

    const/16 v3, 0x5d

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_7

    .line 441
    :pswitch_0
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_1

    const/16 p1, 0x10

    .line 442
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 445
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 446
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 448
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_1
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    :cond_1
    const/16 v5, 0x7d

    if-ne v4, v5, :cond_3

    .line 454
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 457
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 458
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 460
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_2
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    :cond_3
    if-ne v4, v3, :cond_5

    .line 466
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 469
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 470
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 472
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_3
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    :cond_5
    if-ne v4, v9, :cond_15

    .line 478
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 547
    :pswitch_1
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v4, v3, :cond_7

    .line 548
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 549
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    .line 534
    :pswitch_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v6, :cond_6

    .line 535
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 536
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    :cond_6
    if-ne v0, v7, :cond_15

    .line 541
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 542
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    .line 553
    :cond_7
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v9, :cond_15

    .line 554
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 559
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextIdent()V

    return-void

    .line 417
    :cond_9
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v7, :cond_b

    .line 418
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 421
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 422
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_a

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 424
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_4
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    :cond_b
    if-ne v0, v6, :cond_15

    .line 429
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 432
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 433
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_c

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 435
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_5
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    .line 509
    :cond_d
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v3, :cond_e

    .line 510
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 511
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    return-void

    :cond_e
    if-lt v0, v4, :cond_f

    if-gt v0, v2, :cond_f

    .line 516
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 517
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    return-void

    :cond_f
    if-ne v0, v7, :cond_15

    .line 522
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 525
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 526
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_10

    goto :goto_6

    :cond_10
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 528
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_6
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    .line 483
    :cond_11
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v0, v4, :cond_12

    if-gt v0, v2, :cond_12

    .line 484
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 485
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    return-void

    :cond_12
    if-ne v0, v3, :cond_13

    .line 490
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 491
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    return-void

    :cond_13
    if-ne v0, v6, :cond_14

    .line 496
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 497
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    :cond_14
    if-ne v0, v7, :cond_15

    .line 502
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 503
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    .line 565
    :cond_15
    :goto_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x20

    if-eq v0, v2, :cond_17

    const/16 v2, 0xa

    if-eq v0, v2, :cond_17

    if-eq v0, v1, :cond_17

    const/16 v1, 0x9

    if-eq v0, v1, :cond_17

    if-eq v0, v8, :cond_17

    const/16 v1, 0x8

    if-ne v0, v1, :cond_16

    goto :goto_8

    .line 575
    :cond_16
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-void

    .line 571
    :cond_17
    :goto_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final nextTokenWithChar(C)V
    .locals 3

    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 172
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, p1, :cond_1

    .line 175
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 176
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_0

    const/16 p1, 0x1a

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_1
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 180
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-void

    :cond_1
    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    goto :goto_2

    .line 194
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0
.end method

.method public final numberString()Ljava/lang/String;
    .locals 3

    .line 199
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 200
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 202
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 212
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scanBoolean()Z
    .locals 5

    .line 1428
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const-string v2, "false"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    .line 1431
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const-string v4, "true"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x4

    goto :goto_0

    .line 1434
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x31

    if-ne v0, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v3, 0x30

    if-ne v0, v3, :cond_3

    .line 1445
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1446
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return v1

    :cond_3
    const/4 v0, -0x1

    .line 1441
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v1
.end method

.method public scanFieldBoolean(J)Z
    .locals 10

    const/4 v0, 0x0

    .line 2652
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2654
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 2660
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, p1

    const-string v2, "false"

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    add-int/lit8 p1, p1, 0x5

    :goto_0
    const/4 p2, 0x0

    goto :goto_2

    .line 2663
    :cond_1
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, p1

    const-string v5, "true"

    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    add-int/2addr p1, v1

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    .line 2666
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, p1

    const-string v5, "\"false\""

    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 2669
    :cond_3
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, p1

    const-string v5, "\"true\""

    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_f

    add-int/lit8 p1, p1, 0x6

    goto :goto_1

    .line 2678
    :goto_2
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, p1, 0x1

    add-int/2addr v4, p1

    .line 2679
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v6, 0x1a

    if-lt v4, p1, :cond_4

    const/16 p1, 0x1a

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2681
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_3
    const/16 v4, 0x10

    const/16 v7, 0x2c

    if-ne p1, v7, :cond_6

    .line 2684
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v5, v3

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v3

    .line 2687
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2688
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_5

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2690
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_4
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 p1, 0x3

    .line 2692
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2693
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return p2

    :cond_6
    const/16 v8, 0x7d

    if-ne p1, v8, :cond_e

    .line 2699
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v5, 0x1

    add-int/2addr p1, v5

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result p1

    if-ne p1, v7, :cond_8

    .line 2701
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2702
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v9, v3

    add-int/2addr p1, v9

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v3

    .line 2705
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2706
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_7

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2708
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_5
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_8

    :cond_8
    const/16 v4, 0x5d

    if-ne p1, v4, :cond_a

    const/16 p1, 0xf

    .line 2711
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2712
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v9, v3

    add-int/2addr p1, v9

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v3

    .line 2715
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2716
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_9

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2718
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_6
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_8

    :cond_a
    if-ne p1, v8, :cond_c

    const/16 p1, 0xd

    .line 2721
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2722
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v9, v3

    add-int/2addr p1, v9

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v3

    .line 2725
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2726
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_b

    goto :goto_7

    :cond_b
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2728
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_7
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_8

    :cond_c
    if-ne p1, v6, :cond_d

    const/16 p1, 0x14

    .line 2731
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2732
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v9, v3

    add-int/2addr p1, v9

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2733
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2738
    :goto_8
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return p2

    .line 2735
    :cond_d
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    .line 2740
    :cond_e
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    .line 2673
    :cond_f
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0
.end method

.method public final scanFieldDouble(J)D
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 3309
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3311
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    return-wide v3

    .line 3316
    :cond_0
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v2

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3318
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v7, v5, v6

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const/16 v9, 0x2d

    if-ne v2, v9, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    if-eqz v10, :cond_2

    add-int/lit8 v2, v6, 0x1

    add-int/2addr v5, v6

    .line 3321
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    move v6, v2

    move v2, v5

    :cond_2
    const/4 v5, -0x1

    const/16 v11, 0x30

    if-lt v2, v11, :cond_15

    const/16 v12, 0x39

    if-gt v2, v12, :cond_15

    sub-int/2addr v2, v11

    .line 3328
    :goto_1
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v6, 0x1

    add-int/2addr v13, v6

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    if-lt v6, v11, :cond_3

    if-gt v6, v12, :cond_3

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v6, v6, -0x30

    add-int/2addr v2, v6

    move v6, v14

    goto :goto_1

    :cond_3
    const/16 v13, 0x2e

    if-ne v6, v13, :cond_4

    const/4 v13, 0x1

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    :goto_2
    const/16 v15, 0xa

    if-eqz v13, :cond_7

    .line 3340
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v14, 0x1

    add-int/2addr v6, v14

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    if-lt v6, v11, :cond_6

    if-gt v6, v12, :cond_6

    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v6, v11

    add-int/2addr v2, v6

    const/16 v6, 0xa

    .line 3345
    :goto_3
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v13, 0x1

    add-int/2addr v14, v13

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v13

    if-lt v13, v11, :cond_5

    if-gt v13, v12, :cond_5

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v13, v13, -0x30

    add-int/2addr v2, v13

    mul-int/lit8 v6, v6, 0xa

    move/from16 v13, v16

    goto :goto_3

    :cond_5
    move/from16 v14, v16

    move/from16 v17, v13

    move v13, v6

    move/from16 v6, v17

    goto :goto_4

    .line 3355
    :cond_6
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    :cond_7
    const/4 v13, 0x1

    :goto_4
    const/16 v1, 0x65

    if-eq v6, v1, :cond_9

    const/16 v1, 0x45

    if-ne v6, v1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v1, 0x1

    :goto_6
    if-eqz v1, :cond_c

    .line 3362
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v14, 0x1

    add-int/2addr v6, v14

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    const/16 v14, 0x2b

    if-eq v6, v14, :cond_b

    if-ne v6, v9, :cond_a

    goto :goto_7

    :cond_a
    move/from16 v14, v16

    goto :goto_9

    .line 3364
    :cond_b
    :goto_7
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v16, 0x1

    add-int v6, v6, v16

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    :goto_8
    move v14, v9

    :goto_9
    if-lt v6, v11, :cond_c

    if-gt v6, v12, :cond_c

    .line 3368
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v14, 0x1

    add-int/2addr v6, v14

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    goto :goto_8

    .line 3375
    :cond_c
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v9, v14

    sub-int/2addr v9, v7

    sub-int/2addr v9, v8

    if-nez v1, :cond_d

    if-ge v9, v15, :cond_d

    int-to-double v1, v2

    int-to-double v11, v13

    .line 3377
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v11

    if-eqz v10, :cond_e

    neg-double v1, v1

    goto :goto_a

    .line 3382
    :cond_d
    invoke-direct {v0, v7, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 3383
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    :cond_e
    :goto_a
    const/16 v7, 0x10

    const/16 v9, 0x2c

    if-ne v6, v9, :cond_f

    .line 3391
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v14, v8

    add-int/2addr v3, v14

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3392
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/4 v3, 0x3

    .line 3393
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3394
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-wide v1

    :cond_f
    const/16 v10, 0x7d

    if-ne v6, v10, :cond_14

    .line 3399
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v14, 0x1

    add-int/2addr v6, v14

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_10

    .line 3401
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3402
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v11, v8

    add-int/2addr v3, v11

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3403
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_b

    :cond_10
    const/16 v7, 0x5d

    if-ne v6, v7, :cond_11

    const/16 v3, 0xf

    .line 3405
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3406
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v11, v8

    add-int/2addr v3, v11

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3407
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_b

    :cond_11
    if-ne v6, v10, :cond_12

    const/16 v3, 0xd

    .line 3409
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3410
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v11, v8

    add-int/2addr v3, v11

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3411
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_b

    :cond_12
    const/16 v7, 0x1a

    if-ne v6, v7, :cond_13

    .line 3413
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v11, v8

    add-int/2addr v3, v11

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v3, 0x14

    .line 3414
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3415
    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_b
    const/4 v3, 0x4

    .line 3420
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v1

    .line 3417
    :cond_13
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    .line 3422
    :cond_14
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    .line 3386
    :cond_15
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3
.end method

.method public final scanFieldDoubleArray(J)[D
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 3430
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3432
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 3436
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    .line 3437
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3439
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    const/16 v4, 0x5b

    const/4 v7, -0x1

    if-eq v2, v4, :cond_2

    .line 3441
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    .line 3445
    :cond_2
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v5, 0x1

    add-int/2addr v2, v5

    .line 3446
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v5, :cond_3

    const/16 v2, 0x1a

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3448
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    const/16 v5, 0x10

    new-array v8, v5, [D

    const/4 v9, 0x0

    .line 3454
    :goto_2
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v11, v10, v4

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/16 v13, 0x2d

    if-ne v2, v13, :cond_4

    const/4 v14, 0x1

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    :goto_3
    if-eqz v14, :cond_6

    add-int/lit8 v2, v4, 0x1

    add-int/2addr v10, v4

    .line 3460
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v4, :cond_5

    const/16 v4, 0x1a

    goto :goto_4

    :cond_5
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3462
    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_4
    move/from16 v18, v4

    move v4, v2

    move/from16 v2, v18

    :cond_6
    const/16 v10, 0x30

    if-lt v2, v10, :cond_26

    const/16 v15, 0x39

    if-gt v2, v15, :cond_26

    add-int/lit8 v2, v2, -0x30

    .line 3469
    :goto_5
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v4, 0x1

    add-int/2addr v6, v4

    .line 3470
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v4, :cond_7

    const/16 v4, 0x1a

    goto :goto_6

    :cond_7
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3472
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_6
    if-lt v4, v10, :cond_8

    if-gt v4, v15, :cond_8

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    move/from16 v4, v16

    goto :goto_5

    :cond_8
    const/16 v6, 0x2e

    if-ne v4, v6, :cond_9

    const/4 v6, 0x1

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    :goto_7
    const/16 v5, 0xa

    if-eqz v6, :cond_d

    .line 3485
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v16, 0x1

    add-int v4, v4, v16

    .line 3486
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v1, :cond_a

    const/16 v1, 0x1a

    goto :goto_8

    :cond_a
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3488
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_8
    if-lt v1, v10, :cond_c

    if-gt v1, v15, :cond_c

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    const/16 v1, 0xa

    .line 3494
    :goto_9
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v6, 0x1

    add-int/2addr v4, v6

    .line 3495
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v6, :cond_b

    const/16 v4, 0x1a

    goto :goto_a

    :cond_b
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3497
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_a
    if-lt v4, v10, :cond_e

    if-gt v4, v15, :cond_e

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    mul-int/lit8 v1, v1, 0xa

    move/from16 v6, v16

    goto :goto_9

    .line 3508
    :cond_c
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    :cond_d
    const/4 v1, 0x1

    :cond_e
    const/16 v6, 0x65

    if-eq v4, v6, :cond_10

    const/16 v6, 0x45

    if-ne v4, v6, :cond_f

    goto :goto_b

    :cond_f
    const/4 v6, 0x0

    goto :goto_c

    :cond_10
    :goto_b
    const/4 v6, 0x1

    :goto_c
    if-eqz v6, :cond_16

    .line 3516
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v16, 0x1

    add-int v4, v4, v16

    .line 3517
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v3, :cond_11

    const/16 v3, 0x1a

    goto :goto_d

    :cond_11
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3519
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_d
    const/16 v4, 0x2b

    if-eq v3, v4, :cond_13

    if-ne v3, v13, :cond_12

    goto :goto_e

    :cond_12
    move v4, v3

    move/from16 v16, v17

    goto :goto_11

    .line 3522
    :cond_13
    :goto_e
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v17, 0x1

    add-int v3, v3, v17

    .line 3523
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v13, :cond_14

    :goto_f
    const/16 v3, 0x1a

    goto :goto_10

    :cond_14
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3525
    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_10
    move/from16 v16, v4

    move v4, v3

    :goto_11
    if-lt v4, v10, :cond_16

    if-gt v4, v15, :cond_16

    .line 3530
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v16, 0x1

    add-int v3, v3, v16

    .line 3531
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v13, :cond_15

    goto :goto_f

    :cond_15
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3533
    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_10

    .line 3540
    :cond_16
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v3, v3, v16

    sub-int/2addr v3, v11

    sub-int/2addr v3, v12

    if-nez v6, :cond_17

    if-ge v3, v5, :cond_17

    int-to-double v2, v2

    int-to-double v5, v1

    .line 3544
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v5

    if-eqz v14, :cond_18

    neg-double v2, v2

    goto :goto_12

    .line 3549
    :cond_17
    invoke-direct {v0, v11, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 3550
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 3553
    :cond_18
    :goto_12
    array-length v1, v8

    const/4 v5, 0x3

    if-lt v9, v1, :cond_19

    .line 3554
    array-length v1, v8

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [D

    const/4 v6, 0x0

    .line 3555
    invoke-static {v8, v6, v1, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v1

    :cond_19
    add-int/lit8 v6, v9, 0x1

    .line 3558
    aput-wide v2, v8, v9

    const/16 v1, 0x2c

    if-ne v4, v1, :cond_1b

    .line 3562
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v16, 0x1

    add-int v1, v1, v16

    .line 3563
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v3, :cond_1a

    const/16 v1, 0x1a

    goto :goto_13

    :cond_1a
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3565
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_13
    move v4, v1

    move/from16 v16, v2

    goto/16 :goto_17

    :cond_1b
    const/16 v2, 0x5d

    if-ne v4, v2, :cond_25

    .line 3568
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v16, 0x1

    add-int v3, v3, v16

    .line 3569
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v9, :cond_1c

    const/16 v3, 0x1a

    goto :goto_14

    :cond_1c
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3571
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3581
    :goto_14
    array-length v9, v8

    if-eq v6, v9, :cond_1d

    .line 3582
    new-array v9, v6, [D

    const/4 v10, 0x0

    .line 3583
    invoke-static {v8, v10, v9, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v9

    :cond_1d
    if-ne v3, v1, :cond_1e

    .line 3588
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v4, v12

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3589
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3590
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v1, 0x10

    .line 3591
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v8

    :cond_1e
    const/16 v5, 0x7d

    if-ne v3, v5, :cond_24

    .line 3597
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v4, 0x1

    add-int/2addr v3, v4

    .line 3598
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v4, :cond_1f

    const/16 v3, 0x1a

    goto :goto_15

    :cond_1f
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3600
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_15
    if-ne v3, v1, :cond_20

    const/16 v1, 0x10

    .line 3602
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3603
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v12

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3604
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_20
    if-ne v3, v2, :cond_21

    const/16 v1, 0xf

    .line 3606
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3607
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v12

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3608
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_21
    if-ne v3, v5, :cond_22

    const/16 v1, 0xd

    .line 3610
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3611
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v12

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3612
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_22
    const/16 v2, 0x1a

    if-ne v3, v2, :cond_23

    .line 3614
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v12

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0x14

    .line 3615
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3616
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_16
    const/4 v1, 0x4

    .line 3621
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v8

    .line 3618
    :cond_23
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v3, 0x0

    return-object v3

    :cond_24
    const/4 v3, 0x0

    .line 3623
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    :cond_25
    :goto_17
    const/16 v1, 0x10

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v10, 0x0

    move v2, v4

    move v9, v6

    move/from16 v4, v16

    const/4 v1, 0x0

    const/16 v5, 0x10

    goto/16 :goto_2

    .line 3575
    :cond_26
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3
.end method

.method public final scanFieldDoubleArray2(J)[[D
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 3631
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3633
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3635
    check-cast v3, [[D

    return-object v3

    .line 3637
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    .line 3638
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3640
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    const/16 v4, 0x5b

    const/4 v7, -0x1

    if-eq v2, v4, :cond_2

    .line 3643
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3644
    check-cast v3, [[D

    return-object v3

    .line 3647
    :cond_2
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v5, 0x1

    add-int/2addr v2, v5

    .line 3648
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v5, :cond_3

    const/16 v2, 0x1a

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3650
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    const/16 v5, 0x10

    new-array v9, v5, [[D

    const/4 v10, 0x0

    :goto_2
    if-ne v2, v4, :cond_2c

    .line 3658
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v8, 0x1

    add-int/2addr v2, v8

    .line 3659
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v8, :cond_4

    const/16 v2, 0x1a

    goto :goto_3

    :cond_4
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3661
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_3
    new-array v8, v5, [D

    const/4 v12, 0x0

    .line 3667
    :goto_4
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v14, v13, v11

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_5

    const/16 v16, 0x1

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    :goto_5
    if-eqz v16, :cond_7

    add-int/lit8 v2, v11, 0x1

    add-int/2addr v13, v11

    .line 3672
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v13, v11, :cond_6

    const/16 v11, 0x1a

    goto :goto_6

    :cond_6
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3674
    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_6
    move/from16 v19, v11

    move v11, v2

    move/from16 v2, v19

    :cond_7
    const/16 v13, 0x30

    if-lt v2, v13, :cond_2b

    const/16 v6, 0x39

    if-gt v2, v6, :cond_2b

    add-int/lit8 v2, v2, -0x30

    .line 3681
    :goto_7
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v11, 0x1

    add-int/2addr v5, v11

    .line 3682
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v11, :cond_8

    const/16 v5, 0x1a

    goto :goto_8

    :cond_8
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3684
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_8
    if-lt v5, v13, :cond_9

    if-gt v5, v6, :cond_9

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    move/from16 v11, v17

    goto :goto_7

    :cond_9
    const/16 v11, 0x2e

    if-ne v5, v11, :cond_d

    .line 3697
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v17, 0x1

    add-int v5, v5, v17

    .line 3698
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v1, :cond_a

    const/16 v1, 0x1a

    goto :goto_9

    :cond_a
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3700
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_9
    if-lt v1, v13, :cond_c

    if-gt v1, v6, :cond_c

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    const/16 v1, 0xa

    .line 3707
    :goto_a
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v11, 0x1

    add-int/2addr v5, v11

    .line 3708
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v11, :cond_b

    const/16 v5, 0x1a

    goto :goto_b

    :cond_b
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3710
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_b
    if-lt v5, v13, :cond_e

    if-gt v5, v6, :cond_e

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    mul-int/lit8 v1, v1, 0xa

    move/from16 v11, v17

    goto :goto_a

    .line 3721
    :cond_c
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3722
    check-cast v3, [[D

    return-object v3

    :cond_d
    const/4 v1, 0x1

    :cond_e
    const/16 v11, 0x65

    if-eq v5, v11, :cond_10

    const/16 v11, 0x45

    if-ne v5, v11, :cond_f

    goto :goto_c

    :cond_f
    const/4 v11, 0x0

    goto :goto_d

    :cond_10
    :goto_c
    const/4 v11, 0x1

    :goto_d
    if-eqz v11, :cond_16

    .line 3729
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v18, v17, 0x1

    add-int v5, v5, v17

    .line 3730
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v3, :cond_11

    const/16 v3, 0x1a

    goto :goto_e

    :cond_11
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3732
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_e
    const/16 v5, 0x2b

    if-eq v3, v5, :cond_13

    if-ne v3, v4, :cond_12

    goto :goto_f

    :cond_12
    move v5, v3

    move/from16 v17, v18

    goto :goto_12

    .line 3735
    :cond_13
    :goto_f
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v18, 0x1

    add-int v3, v3, v18

    .line 3736
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v5, :cond_14

    const/16 v3, 0x1a

    goto :goto_10

    :cond_14
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3738
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_10
    move v5, v3

    :goto_11
    move/from16 v17, v4

    :goto_12
    if-lt v5, v13, :cond_16

    if-gt v5, v6, :cond_16

    .line 3743
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v17, 0x1

    add-int v3, v3, v17

    .line 3744
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v5, :cond_15

    const/16 v5, 0x1a

    goto :goto_11

    :cond_15
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3746
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_10

    .line 3753
    :cond_16
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v3, v3, v17

    sub-int/2addr v3, v14

    sub-int/2addr v3, v15

    if-nez v11, :cond_17

    const/16 v4, 0xa

    if-ge v3, v4, :cond_17

    int-to-double v2, v2

    int-to-double v13, v1

    .line 3756
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v13

    if-eqz v16, :cond_18

    neg-double v2, v2

    goto :goto_13

    .line 3761
    :cond_17
    invoke-direct {v0, v14, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 3762
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 3765
    :cond_18
    :goto_13
    array-length v1, v8

    const/4 v4, 0x3

    if-lt v12, v1, :cond_19

    .line 3766
    array-length v1, v8

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [D

    const/4 v6, 0x0

    .line 3767
    invoke-static {v8, v6, v1, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v1

    :cond_19
    add-int/lit8 v1, v12, 0x1

    .line 3770
    aput-wide v2, v8, v12

    const/16 v2, 0x2c

    if-ne v5, v2, :cond_1b

    .line 3774
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v17, 0x1

    add-int v2, v2, v17

    .line 3775
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_1a

    const/16 v2, 0x1a

    goto :goto_14

    :cond_1a
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3777
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_14
    move/from16 v17, v3

    const/16 v3, 0x1a

    const/16 v4, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_1b

    :cond_1b
    const/16 v3, 0x5d

    if-ne v5, v3, :cond_2a

    .line 3780
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v17, 0x1

    add-int v5, v5, v17

    .line 3781
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v11, :cond_1c

    const/16 v5, 0x1a

    goto :goto_15

    :cond_1c
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3783
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 3793
    :goto_15
    array-length v11, v8

    if-eq v1, v11, :cond_1d

    .line 3794
    new-array v11, v1, [D

    const/4 v12, 0x0

    .line 3795
    invoke-static {v8, v12, v11, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v11

    goto :goto_16

    :cond_1d
    const/4 v12, 0x0

    .line 3799
    :goto_16
    array-length v11, v9

    if-lt v10, v11, :cond_1e

    .line 3800
    array-length v9, v9

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x2

    new-array v9, v9, [[D

    .line 3801
    invoke-static {v8, v12, v9, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e
    add-int/lit8 v1, v10, 0x1

    .line 3804
    aput-object v8, v9, v10

    if-ne v5, v2, :cond_20

    .line 3808
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr v2, v6

    .line 3809
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_1f

    const/16 v2, 0x1a

    goto :goto_17

    :cond_1f
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3811
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_17
    move v8, v3

    const/16 v3, 0x1a

    const/16 v4, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_1a

    :cond_20
    if-ne v5, v3, :cond_29

    .line 3814
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v6, 0x1

    add-int/2addr v5, v6

    .line 3815
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v6, :cond_21

    const/16 v5, 0x1a

    goto :goto_18

    :cond_21
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3817
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 3824
    :goto_18
    array-length v6, v9

    if-eq v1, v6, :cond_22

    .line 3825
    new-array v6, v1, [[D

    const/4 v11, 0x0

    .line 3826
    invoke-static {v9, v11, v6, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v6

    :cond_22
    if-ne v5, v2, :cond_23

    .line 3831
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v8, v15

    add-int/2addr v1, v8

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3832
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3833
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v4, 0x10

    .line 3834
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v9

    :cond_23
    const/16 v4, 0x10

    const/16 v1, 0x7d

    if-ne v5, v1, :cond_28

    .line 3839
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v8, 0x1

    add-int/2addr v5, v8

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_24

    .line 3841
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3842
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v15

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3843
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_24
    if-ne v5, v3, :cond_25

    const/16 v1, 0xf

    .line 3845
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3846
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v15

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3847
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_25
    if-ne v5, v1, :cond_26

    const/16 v1, 0xd

    .line 3849
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3850
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v15

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3851
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_26
    const/16 v3, 0x1a

    if-ne v5, v3, :cond_27

    .line 3853
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v15

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0x14

    .line 3854
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3855
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_19
    const/4 v1, 0x4

    .line 3860
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v9

    .line 3857
    :cond_27
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v12, 0x0

    .line 3858
    move-object v3, v12

    check-cast v3, [[D

    return-object v3

    :cond_28
    const/4 v12, 0x0

    .line 3862
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3863
    move-object v3, v12

    check-cast v3, [[D

    return-object v3

    :cond_29
    const/16 v3, 0x1a

    const/16 v4, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v2, v5

    move v8, v6

    :goto_1a
    move v10, v1

    move-object v3, v12

    const/4 v1, 0x0

    const/16 v4, 0x5b

    const/16 v5, 0x10

    goto/16 :goto_2

    :cond_2a
    const/16 v3, 0x1a

    const/16 v4, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v2, v5

    :goto_1b
    move-object v3, v12

    move/from16 v11, v17

    const/16 v4, 0x5b

    const/16 v5, 0x10

    move v12, v1

    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_2b
    move-object v12, v3

    .line 3787
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3788
    move-object v3, v12

    check-cast v3, [[D

    return-object v3

    :cond_2c
    move-object v12, v3

    goto/16 :goto_2
.end method

.method public final scanFieldFloat(J)F
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2748
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2750
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 2755
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 2757
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v6, v4, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/16 v8, 0x2d

    if-ne v2, v8, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_2

    add-int/lit8 v2, v5, 0x1

    add-int/2addr v4, v5

    .line 2760
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    move v5, v2

    move v2, v4

    :cond_2
    const/4 v4, -0x1

    const/16 v10, 0x30

    if-lt v2, v10, :cond_15

    const/16 v11, 0x39

    if-gt v2, v11, :cond_15

    sub-int/2addr v2, v10

    .line 2767
    :goto_1
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v5, 0x1

    add-int/2addr v12, v5

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    if-lt v5, v10, :cond_3

    if-gt v5, v11, :cond_3

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    move v5, v13

    goto :goto_1

    :cond_3
    const/16 v12, 0x2e

    if-ne v5, v12, :cond_4

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    :goto_2
    const/16 v14, 0xa

    if-eqz v12, :cond_7

    .line 2779
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v12, v13, 0x1

    add-int/2addr v5, v13

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    if-lt v5, v10, :cond_6

    if-gt v5, v11, :cond_6

    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v5, v10

    add-int/2addr v2, v5

    const/16 v5, 0xa

    .line 2784
    :goto_3
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v15, v12, 0x1

    add-int/2addr v13, v12

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v12

    if-lt v12, v10, :cond_5

    if-gt v12, v11, :cond_5

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v12, v12, -0x30

    add-int/2addr v2, v12

    mul-int/lit8 v5, v5, 0xa

    move v12, v15

    goto :goto_3

    :cond_5
    move v13, v15

    move/from16 v16, v12

    move v12, v5

    move/from16 v5, v16

    goto :goto_4

    .line 2794
    :cond_6
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v3

    :cond_7
    const/4 v12, 0x1

    :goto_4
    const/16 v15, 0x65

    if-eq v5, v15, :cond_8

    const/16 v15, 0x45

    if-ne v5, v15, :cond_9

    :cond_8
    const/4 v1, 0x1

    :cond_9
    if-eqz v1, :cond_c

    .line 2801
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v15, v13, 0x1

    add-int/2addr v5, v13

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    const/16 v13, 0x2b

    if-eq v5, v13, :cond_b

    if-ne v5, v8, :cond_a

    goto :goto_5

    :cond_a
    move v13, v15

    goto :goto_7

    .line 2803
    :cond_b
    :goto_5
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v15, 0x1

    add-int/2addr v5, v15

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    :goto_6
    move v13, v8

    :goto_7
    if-lt v5, v10, :cond_c

    if-gt v5, v11, :cond_c

    .line 2807
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v13, 0x1

    add-int/2addr v5, v13

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    goto :goto_6

    .line 2814
    :cond_c
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v13

    sub-int/2addr v8, v6

    sub-int/2addr v8, v7

    if-nez v1, :cond_d

    if-ge v8, v14, :cond_d

    int-to-float v1, v2

    int-to-float v2, v12

    div-float/2addr v1, v2

    if-eqz v9, :cond_e

    neg-float v1, v1

    goto :goto_8

    .line 2821
    :cond_d
    invoke-direct {v0, v6, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 2822
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    :cond_e
    :goto_8
    const/16 v2, 0x10

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_f

    .line 2830
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v13, v7

    add-int/2addr v3, v13

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2831
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/4 v3, 0x3

    .line 2832
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2833
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v1

    :cond_f
    const/16 v8, 0x7d

    if-ne v5, v8, :cond_14

    .line 2838
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v13, 0x1

    add-int/2addr v5, v13

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_10

    .line 2840
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2841
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v9, v7

    add-int/2addr v2, v9

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2842
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    :cond_10
    const/16 v2, 0x5d

    if-ne v5, v2, :cond_11

    const/16 v2, 0xf

    .line 2844
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2845
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v9, v7

    add-int/2addr v2, v9

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2846
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    :cond_11
    if-ne v5, v8, :cond_12

    const/16 v2, 0xd

    .line 2848
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2849
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v9, v7

    add-int/2addr v2, v9

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2850
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    :cond_12
    const/16 v2, 0x1a

    if-ne v5, v2, :cond_13

    .line 2852
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v9, v7

    add-int/2addr v3, v9

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v3, 0x14

    .line 2853
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2854
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_9
    const/4 v2, 0x4

    .line 2859
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v1

    .line 2856
    :cond_13
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v3

    .line 2861
    :cond_14
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v3

    .line 2825
    :cond_15
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v3
.end method

.method public final scanFieldFloatArray(J)[F
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2869
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2871
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 2875
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    .line 2876
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2878
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    const/16 v4, 0x5b

    const/4 v7, -0x1

    if-eq v2, v4, :cond_2

    .line 2880
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    .line 2884
    :cond_2
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v5, 0x1

    add-int/2addr v2, v5

    .line 2885
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v5, :cond_3

    const/16 v2, 0x1a

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2887
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    const/16 v5, 0x10

    new-array v8, v5, [F

    const/4 v9, 0x0

    .line 2893
    :goto_2
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v11, v10, v4

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/16 v13, 0x2d

    if-ne v2, v13, :cond_4

    const/4 v14, 0x1

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    :goto_3
    if-eqz v14, :cond_6

    add-int/lit8 v2, v4, 0x1

    add-int/2addr v10, v4

    .line 2899
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v4, :cond_5

    const/16 v4, 0x1a

    goto :goto_4

    :cond_5
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2901
    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_4
    move/from16 v18, v4

    move v4, v2

    move/from16 v2, v18

    :cond_6
    const/16 v10, 0x30

    if-lt v2, v10, :cond_26

    const/16 v15, 0x39

    if-gt v2, v15, :cond_26

    add-int/lit8 v2, v2, -0x30

    .line 2908
    :goto_5
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v4, 0x1

    add-int/2addr v6, v4

    .line 2909
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v4, :cond_7

    const/16 v4, 0x1a

    goto :goto_6

    :cond_7
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2911
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_6
    if-lt v4, v10, :cond_8

    if-gt v4, v15, :cond_8

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    move/from16 v4, v16

    goto :goto_5

    :cond_8
    const/16 v6, 0x2e

    if-ne v4, v6, :cond_9

    const/4 v6, 0x1

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    :goto_7
    const/16 v5, 0xa

    if-eqz v6, :cond_d

    .line 2924
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v16, 0x1

    add-int v4, v4, v16

    .line 2925
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v1, :cond_a

    const/16 v1, 0x1a

    goto :goto_8

    :cond_a
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2927
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_8
    if-lt v1, v10, :cond_c

    if-gt v1, v15, :cond_c

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    const/16 v1, 0xa

    .line 2933
    :goto_9
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v6, 0x1

    add-int/2addr v4, v6

    .line 2934
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v6, :cond_b

    const/16 v4, 0x1a

    goto :goto_a

    :cond_b
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2936
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_a
    if-lt v4, v10, :cond_e

    if-gt v4, v15, :cond_e

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    mul-int/lit8 v1, v1, 0xa

    move/from16 v6, v16

    goto :goto_9

    .line 2947
    :cond_c
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    :cond_d
    const/4 v1, 0x1

    :cond_e
    const/16 v6, 0x65

    if-eq v4, v6, :cond_10

    const/16 v6, 0x45

    if-ne v4, v6, :cond_f

    goto :goto_b

    :cond_f
    const/4 v6, 0x0

    goto :goto_c

    :cond_10
    :goto_b
    const/4 v6, 0x1

    :goto_c
    if-eqz v6, :cond_16

    .line 2955
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v16, 0x1

    add-int v4, v4, v16

    .line 2956
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v3, :cond_11

    const/16 v3, 0x1a

    goto :goto_d

    :cond_11
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2958
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_d
    const/16 v4, 0x2b

    if-eq v3, v4, :cond_13

    if-ne v3, v13, :cond_12

    goto :goto_e

    :cond_12
    move v4, v3

    move/from16 v16, v17

    goto :goto_11

    .line 2961
    :cond_13
    :goto_e
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v17, 0x1

    add-int v3, v3, v17

    .line 2962
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v13, :cond_14

    :goto_f
    const/16 v3, 0x1a

    goto :goto_10

    :cond_14
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2964
    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_10
    move/from16 v16, v4

    move v4, v3

    :goto_11
    if-lt v4, v10, :cond_16

    if-gt v4, v15, :cond_16

    .line 2969
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v16, 0x1

    add-int v3, v3, v16

    .line 2970
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v13, :cond_15

    goto :goto_f

    :cond_15
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2972
    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_10

    .line 2979
    :cond_16
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v3, v3, v16

    sub-int/2addr v3, v11

    sub-int/2addr v3, v12

    if-nez v6, :cond_17

    if-ge v3, v5, :cond_17

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    if-eqz v14, :cond_18

    neg-float v2, v2

    goto :goto_12

    .line 2988
    :cond_17
    invoke-direct {v0, v11, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 2989
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 2992
    :cond_18
    :goto_12
    array-length v1, v8

    const/4 v3, 0x3

    if-lt v9, v1, :cond_19

    .line 2993
    array-length v1, v8

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [F

    const/4 v5, 0x0

    .line 2994
    invoke-static {v8, v5, v1, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v1

    :cond_19
    add-int/lit8 v5, v9, 0x1

    .line 2997
    aput v2, v8, v9

    const/16 v1, 0x2c

    if-ne v4, v1, :cond_1b

    .line 3001
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v16, 0x1

    add-int v1, v1, v16

    .line 3002
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v3, :cond_1a

    const/16 v1, 0x1a

    goto :goto_13

    :cond_1a
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3004
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_13
    move v4, v1

    move/from16 v16, v2

    goto/16 :goto_17

    :cond_1b
    const/16 v2, 0x5d

    if-ne v4, v2, :cond_25

    .line 3007
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v16, 0x1

    add-int v4, v4, v16

    .line 3008
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v9, :cond_1c

    const/16 v4, 0x1a

    goto :goto_14

    :cond_1c
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3010
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 3020
    :goto_14
    array-length v9, v8

    if-eq v5, v9, :cond_1d

    .line 3021
    new-array v9, v5, [F

    const/4 v10, 0x0

    .line 3022
    invoke-static {v8, v10, v9, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v9

    :cond_1d
    if-ne v4, v1, :cond_1e

    .line 3027
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v12

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3028
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3029
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v1, 0x10

    .line 3030
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v8

    :cond_1e
    const/16 v3, 0x7d

    if-ne v4, v3, :cond_24

    .line 3036
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v6, 0x1

    add-int/2addr v4, v6

    .line 3037
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v6, :cond_1f

    const/16 v4, 0x1a

    goto :goto_15

    :cond_1f
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3039
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_15
    if-ne v4, v1, :cond_20

    const/16 v1, 0x10

    .line 3041
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3042
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v5, v12

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3043
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_20
    if-ne v4, v2, :cond_21

    const/16 v1, 0xf

    .line 3045
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3046
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v5, v12

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3047
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_21
    if-ne v4, v3, :cond_22

    const/16 v1, 0xd

    .line 3049
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3050
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v5, v12

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3051
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_22
    const/16 v2, 0x1a

    if-ne v4, v2, :cond_23

    .line 3053
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v5, v12

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0x14

    .line 3054
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3055
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_16
    const/4 v1, 0x4

    .line 3060
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v8

    .line 3057
    :cond_23
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v3, 0x0

    return-object v3

    :cond_24
    const/4 v3, 0x0

    .line 3062
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    :cond_25
    :goto_17
    const/16 v1, 0x10

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v10, 0x0

    move v2, v4

    move v9, v5

    move/from16 v4, v16

    const/4 v1, 0x0

    const/16 v5, 0x10

    goto/16 :goto_2

    .line 3014
    :cond_26
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3
.end method

.method public final scanFieldFloatArray2(J)[[F
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 3070
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3072
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3074
    check-cast v3, [[F

    return-object v3

    .line 3076
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    .line 3077
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3079
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    const/16 v4, 0x5b

    const/4 v7, -0x1

    if-eq v2, v4, :cond_2

    .line 3082
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3083
    check-cast v3, [[F

    return-object v3

    .line 3086
    :cond_2
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v5, 0x1

    add-int/2addr v2, v5

    .line 3087
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v5, :cond_3

    const/16 v2, 0x1a

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3089
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    const/16 v5, 0x10

    new-array v9, v5, [[F

    const/4 v10, 0x0

    :goto_2
    if-ne v2, v4, :cond_2c

    .line 3097
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v8, 0x1

    add-int/2addr v2, v8

    .line 3098
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v8, :cond_4

    const/16 v2, 0x1a

    goto :goto_3

    :cond_4
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3100
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_3
    new-array v8, v5, [F

    const/4 v12, 0x0

    .line 3106
    :goto_4
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v14, v13, v11

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_5

    const/16 v16, 0x1

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    :goto_5
    if-eqz v16, :cond_7

    add-int/lit8 v2, v11, 0x1

    add-int/2addr v13, v11

    .line 3111
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v13, v11, :cond_6

    const/16 v11, 0x1a

    goto :goto_6

    :cond_6
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3113
    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_6
    move/from16 v19, v11

    move v11, v2

    move/from16 v2, v19

    :cond_7
    const/16 v13, 0x30

    if-lt v2, v13, :cond_2b

    const/16 v6, 0x39

    if-gt v2, v6, :cond_2b

    add-int/lit8 v2, v2, -0x30

    .line 3120
    :goto_7
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v11, 0x1

    add-int/2addr v5, v11

    .line 3121
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v11, :cond_8

    const/16 v5, 0x1a

    goto :goto_8

    :cond_8
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3123
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_8
    if-lt v5, v13, :cond_9

    if-gt v5, v6, :cond_9

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    move/from16 v11, v17

    goto :goto_7

    :cond_9
    const/16 v11, 0x2e

    if-ne v5, v11, :cond_d

    .line 3136
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v17, 0x1

    add-int v5, v5, v17

    .line 3137
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v1, :cond_a

    const/16 v1, 0x1a

    goto :goto_9

    :cond_a
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3139
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_9
    if-lt v1, v13, :cond_c

    if-gt v1, v6, :cond_c

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    const/16 v1, 0xa

    .line 3146
    :goto_a
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v11, 0x1

    add-int/2addr v5, v11

    .line 3147
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v11, :cond_b

    const/16 v5, 0x1a

    goto :goto_b

    :cond_b
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3149
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_b
    if-lt v5, v13, :cond_e

    if-gt v5, v6, :cond_e

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    mul-int/lit8 v1, v1, 0xa

    move/from16 v11, v17

    goto :goto_a

    .line 3160
    :cond_c
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3161
    check-cast v3, [[F

    return-object v3

    :cond_d
    const/4 v1, 0x1

    :cond_e
    const/16 v11, 0x65

    if-eq v5, v11, :cond_10

    const/16 v11, 0x45

    if-ne v5, v11, :cond_f

    goto :goto_c

    :cond_f
    const/4 v11, 0x0

    goto :goto_d

    :cond_10
    :goto_c
    const/4 v11, 0x1

    :goto_d
    if-eqz v11, :cond_16

    .line 3168
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v18, v17, 0x1

    add-int v5, v5, v17

    .line 3169
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v3, :cond_11

    const/16 v3, 0x1a

    goto :goto_e

    :cond_11
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3171
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_e
    const/16 v5, 0x2b

    if-eq v3, v5, :cond_13

    if-ne v3, v4, :cond_12

    goto :goto_f

    :cond_12
    move v5, v3

    move/from16 v17, v18

    goto :goto_12

    .line 3174
    :cond_13
    :goto_f
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v18, 0x1

    add-int v3, v3, v18

    .line 3175
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v5, :cond_14

    const/16 v3, 0x1a

    goto :goto_10

    :cond_14
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3177
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_10
    move v5, v3

    :goto_11
    move/from16 v17, v4

    :goto_12
    if-lt v5, v13, :cond_16

    if-gt v5, v6, :cond_16

    .line 3182
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v17, 0x1

    add-int v3, v3, v17

    .line 3183
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v5, :cond_15

    const/16 v5, 0x1a

    goto :goto_11

    :cond_15
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3185
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_10

    .line 3192
    :cond_16
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v3, v3, v17

    sub-int/2addr v3, v14

    sub-int/2addr v3, v15

    if-nez v11, :cond_17

    const/16 v4, 0xa

    if-ge v3, v4, :cond_17

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    if-eqz v16, :cond_18

    neg-float v2, v2

    goto :goto_13

    .line 3200
    :cond_17
    invoke-direct {v0, v14, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 3201
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 3204
    :cond_18
    :goto_13
    array-length v1, v8

    const/4 v3, 0x3

    if-lt v12, v1, :cond_19

    .line 3205
    array-length v1, v8

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [F

    const/4 v4, 0x0

    .line 3206
    invoke-static {v8, v4, v1, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v1

    :cond_19
    add-int/lit8 v1, v12, 0x1

    .line 3209
    aput v2, v8, v12

    const/16 v2, 0x2c

    if-ne v5, v2, :cond_1b

    .line 3213
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v17, 0x1

    add-int v2, v2, v17

    .line 3214
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_1a

    const/16 v2, 0x1a

    goto :goto_14

    :cond_1a
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3216
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_14
    move/from16 v17, v3

    const/16 v3, 0x10

    const/16 v4, 0x1a

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_1b

    :cond_1b
    const/16 v4, 0x5d

    if-ne v5, v4, :cond_2a

    .line 3219
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v17, 0x1

    add-int v5, v5, v17

    .line 3220
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v11, :cond_1c

    const/16 v5, 0x1a

    goto :goto_15

    :cond_1c
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3222
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 3232
    :goto_15
    array-length v11, v8

    if-eq v1, v11, :cond_1d

    .line 3233
    new-array v11, v1, [F

    const/4 v12, 0x0

    .line 3234
    invoke-static {v8, v12, v11, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v11

    goto :goto_16

    :cond_1d
    const/4 v12, 0x0

    .line 3238
    :goto_16
    array-length v11, v9

    if-lt v10, v11, :cond_1e

    .line 3239
    array-length v9, v9

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x2

    new-array v9, v9, [[F

    .line 3240
    invoke-static {v8, v12, v9, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e
    add-int/lit8 v1, v10, 0x1

    .line 3243
    aput-object v8, v9, v10

    if-ne v5, v2, :cond_20

    .line 3247
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr v2, v6

    .line 3248
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_1f

    const/16 v2, 0x1a

    goto :goto_17

    :cond_1f
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3250
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_17
    move v8, v3

    const/16 v3, 0x10

    const/16 v4, 0x1a

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_1a

    :cond_20
    if-ne v5, v4, :cond_29

    .line 3253
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v6, 0x1

    add-int/2addr v5, v6

    .line 3254
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v6, :cond_21

    const/16 v5, 0x1a

    goto :goto_18

    :cond_21
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3256
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 3263
    :goto_18
    array-length v6, v9

    if-eq v1, v6, :cond_22

    .line 3264
    new-array v6, v1, [[F

    const/4 v11, 0x0

    .line 3265
    invoke-static {v9, v11, v6, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v6

    :cond_22
    if-ne v5, v2, :cond_23

    .line 3270
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v8, v15

    add-int/2addr v1, v8

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3271
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3272
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v3, 0x10

    .line 3273
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v9

    :cond_23
    const/16 v3, 0x10

    const/16 v1, 0x7d

    if-ne v5, v1, :cond_28

    .line 3278
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v8, 0x1

    add-int/2addr v5, v8

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_24

    .line 3280
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3281
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v15

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3282
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_24
    if-ne v5, v4, :cond_25

    const/16 v1, 0xf

    .line 3284
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3285
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v15

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3286
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_25
    if-ne v5, v1, :cond_26

    const/16 v1, 0xd

    .line 3288
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3289
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v15

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3290
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_26
    const/16 v4, 0x1a

    if-ne v5, v4, :cond_27

    .line 3292
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v15

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0x14

    .line 3293
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3294
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_19
    const/4 v1, 0x4

    .line 3299
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v9

    .line 3296
    :cond_27
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v12, 0x0

    .line 3297
    move-object v3, v12

    check-cast v3, [[F

    return-object v3

    :cond_28
    const/4 v12, 0x0

    .line 3301
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3302
    move-object v3, v12

    check-cast v3, [[F

    return-object v3

    :cond_29
    const/16 v3, 0x10

    const/16 v4, 0x1a

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v2, v5

    move v8, v6

    :goto_1a
    move v10, v1

    move-object v3, v12

    const/4 v1, 0x0

    const/16 v4, 0x5b

    const/16 v5, 0x10

    goto/16 :goto_2

    :cond_2a
    const/16 v3, 0x10

    const/16 v4, 0x1a

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v2, v5

    :goto_1b
    move-object v3, v12

    move/from16 v11, v17

    const/16 v4, 0x5b

    const/16 v5, 0x10

    move v12, v1

    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_2b
    move-object v12, v3

    .line 3226
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3227
    move-object v3, v12

    check-cast v3, [[F

    return-object v3

    :cond_2c
    move-object v12, v3

    goto/16 :goto_2
.end method

.method public scanFieldInt(J)I
    .locals 10

    const/4 v0, 0x0

    .line 2133
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2135
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 2141
    :cond_0
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, p1, 0x1

    add-int/2addr p2, p1

    .line 2142
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v2, 0x1a

    if-lt p2, p1, :cond_1

    const/16 p1, 0x1a

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2144
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_0
    const/16 p2, 0x22

    const/4 v3, 0x1

    if-ne p1, p2, :cond_3

    .line 2150
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v1, 0x1

    add-int/2addr p1, v1

    .line 2151
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v1, :cond_2

    const/16 p1, 0x1a

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2153
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_1
    move v1, v4

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    const/16 v5, 0x30

    const/4 v6, -0x1

    if-lt p1, v5, :cond_15

    const/16 v7, 0x39

    if-gt p1, v7, :cond_15

    sub-int/2addr p1, v5

    .line 2161
    :goto_3
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v1, 0x1

    add-int/2addr v8, v1

    .line 2162
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v1, :cond_4

    const/16 v1, 0x1a

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2164
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_4
    if-lt v1, v5, :cond_5

    if-gt v1, v7, :cond_5

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr p1, v1

    move v1, v9

    goto :goto_3

    :cond_5
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_6

    .line 2168
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    :cond_6
    if-ne v1, p2, :cond_9

    if-nez v4, :cond_7

    .line 2172
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    .line 2175
    :cond_7
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v9, 0x1

    add-int/2addr p2, v9

    .line 2176
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p2, v4, :cond_8

    const/16 p2, 0x1a

    goto :goto_5

    :cond_8
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2178
    invoke-virtual {v4, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    :goto_5
    move v9, v1

    move v1, p2

    :cond_9
    if-gez p1, :cond_a

    .line 2185
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    :cond_a
    const/16 p2, 0x10

    const/16 v4, 0x2c

    if-ne v1, v4, :cond_c

    .line 2194
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v9, v3

    add-int/2addr v0, v9

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v3

    .line 2197
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2198
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_b

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2200
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_6
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v0, 0x3

    .line 2202
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2203
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return p1

    :cond_c
    const/16 v5, 0x7d

    if-ne v1, v5, :cond_14

    .line 2208
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v9, 0x1

    add-int/2addr v1, v9

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_e

    .line 2210
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2211
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v7, v3

    add-int/2addr p2, v7

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p2, v3

    .line 2214
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2215
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p2, v0, :cond_d

    goto :goto_7

    :cond_d
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2217
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_7
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_a

    :cond_e
    const/16 p2, 0x5d

    if-ne v1, p2, :cond_10

    const/16 p2, 0xf

    .line 2220
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2221
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v7, v3

    add-int/2addr p2, v7

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p2, v3

    .line 2224
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2225
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p2, v0, :cond_f

    goto :goto_8

    :cond_f
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2227
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_8
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_a

    :cond_10
    if-ne v1, v5, :cond_12

    const/16 p2, 0xd

    .line 2230
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2231
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v7, v3

    add-int/2addr p2, v7

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p2, v3

    .line 2234
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2235
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p2, v0, :cond_11

    goto :goto_9

    :cond_11
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2237
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_9
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_a

    :cond_12
    if-ne v1, v2, :cond_13

    const/16 p2, 0x14

    .line 2240
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2241
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v7, v3

    add-int/2addr p2, v7

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2242
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_a
    const/4 p2, 0x4

    .line 2247
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return p1

    .line 2244
    :cond_13
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    .line 2249
    :cond_14
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    .line 2189
    :cond_15
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0
.end method

.method public final scanFieldIntArray(J)[I
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2257
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2259
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 2264
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    .line 2265
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v6, 0x1a

    if-lt v4, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2267
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    const/16 v4, 0x5b

    const/4 v7, -0x1

    if-eq v2, v4, :cond_2

    .line 2269
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    .line 2273
    :cond_2
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v5, 0x1

    add-int/2addr v2, v5

    .line 2274
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v5, :cond_3

    const/16 v2, 0x1a

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2276
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    const/16 v5, 0x10

    new-array v8, v5, [I

    const/4 v9, 0x3

    const/16 v10, 0x2c

    const/16 v11, 0x5d

    const/4 v12, 0x1

    if-ne v2, v11, :cond_5

    .line 2284
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v4, 0x1

    add-int/2addr v2, v4

    .line 2285
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_4

    const/16 v2, 0x1a

    goto :goto_2

    :cond_4
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2287
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_2
    const/4 v3, 0x0

    goto/16 :goto_9

    :cond_5
    const/4 v13, 0x0

    :goto_3
    const/16 v14, 0x2d

    if-ne v2, v14, :cond_7

    .line 2293
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v4, 0x1

    add-int/2addr v2, v4

    .line 2294
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_6

    const/16 v2, 0x1a

    goto :goto_4

    :cond_6
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2296
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_4
    move v4, v14

    const/4 v14, 0x1

    goto :goto_5

    :cond_7
    const/4 v14, 0x0

    :goto_5
    const/16 v15, 0x30

    if-lt v2, v15, :cond_18

    const/16 v3, 0x39

    if-gt v2, v3, :cond_17

    add-int/lit8 v2, v2, -0x30

    .line 2303
    :goto_6
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v4, 0x1

    add-int/2addr v7, v4

    .line 2304
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v4, :cond_8

    const/16 v4, 0x1a

    goto :goto_7

    :cond_8
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2306
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_7
    if-lt v4, v15, :cond_9

    if-gt v4, v3, :cond_9

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    move/from16 v4, v16

    goto :goto_6

    .line 2315
    :cond_9
    array-length v3, v8

    if-lt v13, v3, :cond_a

    .line 2316
    array-length v3, v8

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    .line 2317
    invoke-static {v8, v1, v3, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v3

    :cond_a
    add-int/lit8 v3, v13, 0x1

    if-eqz v14, :cond_b

    neg-int v2, v2

    .line 2320
    :cond_b
    aput v2, v8, v13

    if-ne v4, v10, :cond_d

    .line 2324
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v16, 0x1

    add-int v2, v2, v16

    .line 2325
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v7, :cond_c

    const/16 v2, 0x1a

    goto :goto_8

    :cond_c
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2327
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_8
    move/from16 v16, v4

    const/4 v7, 0x0

    move v4, v2

    const/4 v2, -0x1

    goto/16 :goto_b

    :cond_d
    if-ne v4, v11, :cond_16

    .line 2330
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v16, 0x1

    add-int v2, v2, v16

    .line 2331
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_e

    const/16 v2, 0x1a

    goto :goto_9

    :cond_e
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2333
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2344
    :goto_9
    array-length v4, v8

    if-eq v3, v4, :cond_f

    .line 2345
    new-array v4, v3, [I

    .line 2346
    invoke-static {v8, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v4

    :cond_f
    if-ne v2, v10, :cond_10

    .line 2351
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v13, v12

    add-int/2addr v1, v13

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2352
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2353
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2354
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v8

    :cond_10
    const/16 v1, 0x7d

    if-ne v2, v1, :cond_15

    .line 2359
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v13, 0x1

    add-int/2addr v2, v13

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_11

    .line 2361
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2362
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v3, v12

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2363
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_a

    :cond_11
    if-ne v2, v11, :cond_12

    const/16 v1, 0xf

    .line 2365
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2366
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v3, v12

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2367
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_a

    :cond_12
    if-ne v2, v1, :cond_13

    const/16 v1, 0xd

    .line 2369
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2370
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v3, v12

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2371
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_a

    :cond_13
    if-ne v2, v6, :cond_14

    .line 2373
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v3, v12

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0x14

    .line 2374
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2375
    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_a
    const/4 v1, 0x4

    .line 2380
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v8

    :cond_14
    const/4 v2, -0x1

    .line 2377
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v7, 0x0

    return-object v7

    :cond_15
    const/4 v2, -0x1

    const/4 v7, 0x0

    .line 2382
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v7

    :cond_16
    const/4 v2, -0x1

    const/4 v7, 0x0

    :goto_b
    move v13, v3

    move v2, v4

    move-object v3, v7

    move/from16 v4, v16

    const/4 v7, -0x1

    goto/16 :goto_3

    :cond_17
    const/4 v2, -0x1

    const/4 v7, 0x0

    goto :goto_c

    :cond_18
    move-object v7, v3

    const/4 v2, -0x1

    .line 2337
    :goto_c
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v7
.end method

.method public scanFieldLong(J)J
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2390
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2392
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    return-wide v3

    .line 2400
    :cond_0
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v2

    .line 2401
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2403
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    const/16 v5, 0x22

    if-ne v2, v5, :cond_3

    .line 2413
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v6, 0x1

    add-int/2addr v1, v6

    .line 2414
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v6, :cond_2

    const/16 v1, 0x1a

    goto :goto_1

    :cond_2
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2416
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_1
    move v6, v2

    move v2, v1

    const/4 v1, 0x1

    :cond_3
    const/16 v9, 0x30

    const/4 v10, -0x1

    if-lt v2, v9, :cond_15

    const/16 v11, 0x39

    if-gt v2, v11, :cond_15

    sub-int/2addr v2, v9

    int-to-long v12, v2

    .line 2426
    :goto_2
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v6, 0x1

    add-int/2addr v2, v6

    .line 2427
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_4

    const/16 v2, 0x1a

    goto :goto_3

    :cond_4
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2429
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_3
    if-lt v2, v9, :cond_5

    if-gt v2, v11, :cond_5

    const-wide/16 v15, 0xa

    mul-long v12, v12, v15

    add-int/lit8 v2, v2, -0x30

    int-to-long v7, v2

    add-long/2addr v12, v7

    move v6, v14

    goto :goto_2

    :cond_5
    const/16 v6, 0x2e

    if-ne v2, v6, :cond_6

    .line 2434
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    :cond_6
    if-ne v2, v5, :cond_9

    if-nez v1, :cond_7

    .line 2438
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    .line 2441
    :cond_7
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v14, 0x1

    add-int/2addr v1, v14

    .line 2442
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v5, :cond_8

    const/16 v1, 0x1a

    goto :goto_4

    :cond_8
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2444
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_4
    move v14, v2

    move v2, v1

    :cond_9
    cmp-long v1, v12, v3

    if-gez v1, :cond_a

    .line 2451
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    :cond_a
    const/16 v1, 0x10

    const/16 v5, 0x2c

    if-ne v2, v5, :cond_c

    .line 2460
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v3, 0x1

    sub-int/2addr v14, v3

    add-int/2addr v2, v14

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v3

    .line 2463
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2464
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v3, :cond_b

    const/16 v7, 0x1a

    goto :goto_5

    :cond_b
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2466
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_5
    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v2, 0x3

    .line 2468
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2469
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-wide v12

    :cond_c
    const/16 v6, 0x7d

    if-ne v2, v6, :cond_14

    .line 2474
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v14, 0x1

    add-int/2addr v2, v14

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_e

    .line 2476
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2477
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v2, 0x1

    sub-int/2addr v7, v2

    add-int/2addr v1, v7

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v2

    .line 2480
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2481
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_d

    const/16 v7, 0x1a

    goto :goto_6

    :cond_d
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2483
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_6
    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    :cond_e
    const/16 v1, 0x5d

    if-ne v2, v1, :cond_10

    const/16 v1, 0xf

    .line 2486
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2487
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v2, 0x1

    sub-int/2addr v7, v2

    add-int/2addr v1, v7

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v2

    .line 2490
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2491
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_f

    const/16 v7, 0x1a

    goto :goto_7

    :cond_f
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2493
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_7
    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    :cond_10
    if-ne v2, v6, :cond_12

    const/16 v1, 0xd

    .line 2496
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2497
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v2, 0x1

    sub-int/2addr v7, v2

    add-int/2addr v1, v7

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v2

    .line 2500
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2501
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_11

    const/16 v7, 0x1a

    goto :goto_8

    :cond_11
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2503
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_8
    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    :cond_12
    const/16 v1, 0x1a

    if-ne v2, v1, :cond_13

    const/16 v2, 0x14

    .line 2506
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2507
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v3, 0x1

    sub-int/2addr v7, v3

    add-int/2addr v2, v7

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2508
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_9
    const/4 v1, 0x4

    .line 2513
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v12

    .line 2510
    :cond_13
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    .line 2515
    :cond_14
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    .line 2455
    :cond_15
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3
.end method

.method public scanFieldString(J)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    .line 2523
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2525
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2532
    :cond_0
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, p1, 0x1

    add-int/2addr p2, p1

    .line 2533
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const-string v2, "unclosed str, "

    if-ge p2, p1, :cond_11

    .line 2536
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x22

    const/4 v3, -0x1

    if-eq p1, p2, :cond_1

    .line 2541
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2543
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    return-object p1

    .line 2548
    :cond_1
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v1

    .line 2549
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v4, p2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v4, v3, :cond_10

    .line 2555
    sget-boolean v2, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    if-eqz v2, :cond_2

    .line 2556
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v2, p1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    sub-int v2, v4, p1

    .line 2559
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, v1

    invoke-virtual {p0, v5, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v5

    .line 2560
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5, v0, v2}, Ljava/lang/String;-><init>([CII)V

    move-object v2, v6

    :goto_0
    const/16 v5, 0x5c

    .line 2563
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v3, :cond_6

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v6, v4, -0x1

    const/4 v8, 0x0

    :goto_2
    if-ltz v6, :cond_3

    .line 2567
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_3

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, -0x1

    const/4 v2, 0x1

    goto :goto_2

    .line 2574
    :cond_3
    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_5

    sub-int p1, v4, p1

    .line 2581
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p2, v1

    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object p2

    if-eqz v2, :cond_4

    .line 2583
    invoke-static {p2, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 2585
    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2, v0, p1}, Ljava/lang/String;-><init>([CII)V

    .line 2586
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_6

    .line 2587
    invoke-static {p2, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 2577
    :cond_5
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, p2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    goto :goto_1

    :cond_6
    :goto_3
    add-int/2addr v4, v7

    .line 2596
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 p2, 0x1a

    if-lt v4, p1, :cond_7

    const/16 p1, 0x1a

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2598
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_4
    const/16 v0, 0x10

    const/16 v1, 0x2c

    if-ne p1, v1, :cond_9

    .line 2602
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v7

    .line 2605
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2606
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, p1, :cond_8

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2608
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p2

    :goto_5
    iput-char p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 p1, 0x3

    .line 2610
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2611
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v2

    :cond_9
    const/16 v5, 0x7d

    if-ne p1, v5, :cond_f

    add-int/2addr v4, v7

    .line 2618
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, p1, :cond_a

    const/16 p1, 0x1a

    goto :goto_6

    :cond_a
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2620
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_6
    if-ne p1, v1, :cond_b

    .line 2623
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2624
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2625
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    :cond_b
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_c

    const/16 p1, 0xf

    .line 2627
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2628
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2629
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    :cond_c
    if-ne p1, v5, :cond_d

    const/16 p1, 0xd

    .line 2631
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2632
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2633
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    :cond_d
    if-ne p1, p2, :cond_e

    const/16 p1, 0x14

    .line 2635
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2636
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2637
    iput-char p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_7
    const/4 p1, 0x4

    .line 2642
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v2

    .line 2639
    :cond_e
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2640
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    return-object p1

    .line 2644
    :cond_f
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2645
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    return-object p1

    .line 2551
    :cond_10
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2534
    :cond_11
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method public scanFieldSymbol(J)J
    .locals 10

    const/4 v0, 0x0

    .line 3870
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3872
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 3877
    :cond_0
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, p1, 0x1

    add-int/2addr p2, p1

    .line 3878
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v3, 0x1a

    if-lt p2, p1, :cond_1

    const/16 p1, 0x1a

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3880
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_0
    const/16 p2, 0x22

    const/4 v4, -0x1

    if-eq p1, p2, :cond_2

    .line 3883
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v0

    :cond_2
    const-wide/32 v5, -0x7ee3623b

    .line 3890
    :goto_1
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v2, 0x1

    add-int/2addr p1, v2

    .line 3891
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v2, :cond_3

    const/16 p1, 0x1a

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3893
    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_2
    if-ne p1, p2, :cond_d

    .line 3896
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p2, v7, 0x1

    add-int/2addr p1, v7

    .line 3897
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v2, :cond_4

    const/16 p1, 0x1a

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3899
    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_3
    const/16 v2, 0x2c

    if-ne p1, v2, :cond_6

    .line 3913
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p2, p2, -0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    .line 3916
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3917
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, p2, :cond_5

    goto :goto_4

    :cond_5
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3919
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_4
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 p1, 0x3

    .line 3921
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v5

    :cond_6
    const/16 v7, 0x7d

    if-ne p1, v7, :cond_c

    .line 3926
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, p2, 0x1

    add-int/2addr p1, p2

    .line 3927
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, p2, :cond_7

    const/16 p1, 0x1a

    goto :goto_5

    :cond_7
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3929
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_5
    if-ne p1, v2, :cond_8

    const/16 p1, 0x10

    .line 3931
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3932
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, -0x1

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3933
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_6

    :cond_8
    const/16 p2, 0x5d

    if-ne p1, p2, :cond_9

    const/16 p1, 0xf

    .line 3935
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3936
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, -0x1

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3937
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_6

    :cond_9
    if-ne p1, v7, :cond_a

    const/16 p1, 0xd

    .line 3939
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3940
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, -0x1

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3941
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_6

    :cond_a
    if-ne p1, v3, :cond_b

    const/16 p1, 0x14

    .line 3943
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3944
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, -0x1

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3945
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_6
    const/4 p1, 0x4

    .line 3950
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v5

    .line 3947
    :cond_b
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v0

    .line 3952
    :cond_c
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v0

    :cond_d
    int-to-long v8, p1

    xor-long/2addr v5, v8

    const-wide/32 v8, 0x1000193

    mul-long v5, v5, v8

    const/16 v2, 0x5c

    if-ne p1, v2, :cond_e

    .line 3907
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v0

    :cond_e
    move v2, v7

    goto/16 :goto_1
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .locals 35

    move-object/from16 v9, p0

    .line 3960
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int v10, v0, v1

    const/4 v11, 0x6

    const/4 v12, 0x2

    const/16 v13, 0xd

    const/16 v14, 0x39

    const/4 v15, 0x5

    const/16 v16, 0x1

    const/16 v8, 0xa

    const/16 v7, 0x30

    const/4 v6, 0x0

    if-nez p1, :cond_4

    if-le v10, v13, :cond_4

    .line 3963
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v2, "/Date("

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v10

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_4

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v10

    sub-int/2addr v0, v12

    .line 3964
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_4

    const/4 v0, -0x1

    const/4 v1, 0x6

    :goto_0
    if-ge v1, v10, :cond_2

    .line 3968
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v1

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    if-lt v2, v7, :cond_2

    if-le v2, v14, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    return v6

    .line 3978
    :cond_3
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v11

    sub-int/2addr v0, v1

    .line 3979
    invoke-direct {v9, v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v0

    .line 3980
    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 3982
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 3983
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3985
    iput v15, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v16

    :cond_4
    const/16 v5, 0x11

    const/16 v4, 0x8

    const/16 v3, 0xc

    const/16 v2, 0xb

    const/16 v17, 0x3

    const/16 v1, 0xe

    if-eq v10, v4, :cond_27

    if-eq v10, v1, :cond_27

    if-ne v10, v5, :cond_5

    goto/16 :goto_a

    :cond_5
    if-ge v10, v8, :cond_6

    return v6

    .line 4064
    :cond_6
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v14, 0x2d

    if-eq v0, v14, :cond_7

    return v6

    .line 4067
    :cond_7
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    if-eq v0, v14, :cond_8

    return v6

    .line 4071
    :cond_8
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v26

    .line 4072
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v27

    .line 4073
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v28

    .line 4074
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v29

    .line 4075
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v15

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v30

    .line 4076
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v11

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v31

    .line 4077
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v32

    .line 4078
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v33

    move/from16 v18, v26

    move/from16 v19, v27

    move/from16 v20, v28

    move/from16 v21, v29

    move/from16 v22, v30

    move/from16 v23, v31

    move/from16 v24, v32

    move/from16 v25, v33

    .line 4079
    invoke-static/range {v18 .. v25}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkDate(CCCCCCII)Z

    move-result v0

    if-nez v0, :cond_9

    return v6

    :cond_9
    move-object/from16 v0, p0

    const/16 v4, 0xe

    move/from16 v1, v26

    const/16 v11, 0xb

    move/from16 v2, v27

    const/16 v14, 0xc

    move/from16 v3, v28

    const/16 v12, 0xe

    move/from16 v4, v29

    move/from16 v5, v30

    const/4 v15, 0x0

    move/from16 v6, v31

    move/from16 v7, v32

    const/16 v22, 0xa

    move/from16 v8, v33

    .line 4083
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->setCalendar(CCCCCCCC)V

    .line 4085
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_d

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    if-nez p1, :cond_a

    goto :goto_4

    :cond_a
    const/16 v1, 0x22

    if-eq v0, v1, :cond_c

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_b

    goto :goto_3

    :cond_b
    return v15

    .line 4091
    :cond_c
    :goto_3
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v11, v15}, Ljava/util/Calendar;->set(II)V

    .line 4092
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 4093
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v13, v15}, Ljava/util/Calendar;->set(II)V

    .line 4094
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v12, v15}, Ljava/util/Calendar;->set(II)V

    .line 4096
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0xa

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v0, 0x5

    .line 4098
    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v16

    :cond_d
    :goto_4
    const/16 v0, 0x13

    if-ge v10, v0, :cond_e

    return v15

    .line 4104
    :cond_e
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v13

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_f

    return v15

    .line 4107
    :cond_f
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_10

    return v15

    .line 4111
    :cond_10
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v11

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    .line 4112
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v14

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v23

    .line 4113
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v12

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v24

    .line 4114
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v3, 0xf

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v25

    .line 4115
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v8, 0x11

    add-int/2addr v3, v8

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v26

    .line 4116
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v3, 0x12

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v27

    move v3, v1

    move/from16 v4, v23

    move/from16 v5, v24

    move/from16 v6, v25

    move/from16 v7, v26

    move/from16 v8, v27

    .line 4118
    invoke-static/range {v3 .. v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkTime(CCCCCC)Z

    move-result v3

    if-nez v3, :cond_11

    return v15

    :cond_11
    const/16 v7, 0x30

    sub-int/2addr v1, v7

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v23, v23, -0x30

    add-int v1, v1, v23

    add-int/lit8 v24, v24, -0x30

    mul-int/lit8 v24, v24, 0xa

    add-int/lit8 v25, v25, -0x30

    add-int v3, v24, v25

    add-int/lit8 v26, v26, -0x30

    mul-int/lit8 v26, v26, 0xa

    add-int/lit8 v27, v27, -0x30

    add-int v4, v26, v27

    .line 4125
    iget-object v5, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5, v11, v1}, Ljava/util/Calendar;->set(II)V

    .line 4126
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v14, v3}, Ljava/util/Calendar;->set(II)V

    .line 4127
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v13, v4}, Ljava/util/Calendar;->set(II)V

    .line 4129
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v0

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_25

    const/16 v0, 0x15

    if-ge v10, v0, :cond_12

    return v15

    .line 4154
    :cond_12
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v1, 0x14

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    if-lt v1, v7, :cond_24

    const/16 v3, 0x39

    if-le v1, v3, :cond_13

    goto/16 :goto_9

    .line 4158
    :cond_13
    sget-object v4, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    aget v1, v4, v1

    if-le v10, v0, :cond_14

    .line 4162
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, v0

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    if-lt v0, v7, :cond_14

    if-gt v0, v3, :cond_14

    mul-int/lit8 v1, v1, 0xa

    .line 4164
    aget v0, v4, v0

    add-int/2addr v1, v0

    const/4 v0, 0x2

    goto :goto_5

    :cond_14
    const/4 v0, 0x1

    :goto_5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_15

    .line 4170
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v3, 0x16

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_15

    const/16 v5, 0x39

    if-gt v3, v5, :cond_15

    mul-int/lit8 v1, v1, 0xa

    .line 4172
    aget v0, v4, v3

    add-int/2addr v1, v0

    const/4 v0, 0x3

    .line 4177
    :cond_15
    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v12, v1}, Ljava/util/Calendar;->set(II)V

    .line 4180
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v1, 0x14

    add-int/2addr v1, v0

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    const/16 v3, 0x2b

    if-eq v1, v3, :cond_19

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_16

    goto :goto_6

    :cond_16
    const/16 v2, 0x5a

    if-ne v1, v2, :cond_18

    .line 4229
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-eqz v1, :cond_17

    .line 4230
    invoke-static {v15}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    .line 4231
    array-length v2, v1

    if-lez v2, :cond_17

    .line 4232
    aget-object v1, v1, v15

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 4233
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_17
    const/4 v6, 0x1

    goto/16 :goto_8

    :cond_18
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 4182
    :cond_19
    :goto_6
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_24

    const/16 v5, 0x31

    if-le v3, v5, :cond_1a

    goto/16 :goto_9

    .line 4187
    :cond_1a
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v5, 0x14

    add-int/2addr v5, v0

    const/4 v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_24

    const/16 v6, 0x39

    if-le v5, v6, :cond_1b

    goto/16 :goto_9

    .line 4192
    :cond_1b
    iget v6, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v6, 0x14

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    if-ne v6, v2, :cond_1e

    .line 4194
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x14

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    if-eq v2, v7, :cond_1c

    return v15

    .line 4199
    :cond_1c
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x14

    add-int/2addr v2, v0

    const/4 v6, 0x5

    add-int/2addr v2, v6

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    if-eq v2, v7, :cond_1d

    return v15

    :cond_1d
    const/4 v11, 0x6

    goto :goto_7

    :cond_1e
    if-ne v6, v7, :cond_20

    .line 4205
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x14

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    if-eq v2, v7, :cond_1f

    return v15

    :cond_1f
    const/4 v11, 0x5

    goto :goto_7

    :cond_20
    const/4 v11, 0x3

    .line 4214
    :goto_7
    aget v2, v4, v3

    mul-int/lit8 v2, v2, 0xa

    aget v3, v4, v5

    add-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0xe10

    mul-int/lit16 v2, v2, 0x3e8

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_21

    neg-int v2, v2

    .line 4219
    :cond_21
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-eq v1, v2, :cond_22

    .line 4220
    invoke-static {v2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    .line 4221
    array-length v2, v1

    if-lez v2, :cond_22

    .line 4222
    aget-object v1, v1, v15

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 4223
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_22
    move v6, v11

    .line 4238
    :goto_8
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x14

    add-int/2addr v0, v6

    add-int/2addr v1, v0

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_23

    const/16 v2, 0x22

    if-eq v1, v2, :cond_23

    return v15

    .line 4242
    :cond_23
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v0

    iput v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v0, 0x5

    .line 4244
    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v16

    :cond_24
    :goto_9
    return v15

    .line 4135
    :cond_25
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v12, v15}, Ljava/util/Calendar;->set(II)V

    .line 4137
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v0

    iput v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v0, 0x5

    .line 4139
    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v0, 0x5a

    if-ne v1, v0, :cond_26

    .line 4143
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    if-eqz v0, :cond_26

    .line 4144
    invoke-static {v15}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v0

    .line 4145
    array-length v1, v0

    if-lez v1, :cond_26

    .line 4146
    aget-object v0, v0, v15

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 4147
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_26
    return v16

    :cond_27
    :goto_a
    const/16 v8, 0x11

    const/16 v11, 0xb

    const/16 v12, 0xe

    const/16 v14, 0xc

    const/4 v15, 0x0

    const/16 v22, 0xa

    if-eqz p1, :cond_28

    return v15

    .line 3997
    :cond_28
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    .line 3998
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3999
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v3, 0x2

    add-int/2addr v0, v3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    .line 4000
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    .line 4001
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    .line 4002
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v17, 0x5

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v17

    .line 4003
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v18, 0x6

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    .line 4004
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v19

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v17

    move/from16 v29, v18

    move/from16 v30, v19

    .line 4006
    invoke-static/range {v23 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkDate(CCCCCCII)Z

    move-result v0

    if-nez v0, :cond_29

    return v15

    :cond_29
    move-object/from16 v0, p0

    const/16 v12, 0x8

    move v4, v5

    move v5, v6

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    .line 4010
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->setCalendar(CCCCCCCC)V

    if-eq v10, v12, :cond_30

    .line 4014
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 4015
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v1, 0x9

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v7

    .line 4016
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v8

    .line 4017
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v11

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v12

    .line 4018
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v14

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v17

    .line 4019
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v13

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    move v1, v0

    move v2, v7

    move v3, v8

    move v4, v12

    move/from16 v5, v17

    move/from16 v6, v18

    .line 4021
    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkTime(CCCCCC)Z

    move-result v1

    if-nez v1, :cond_2a

    return v15

    :cond_2a
    const/16 v1, 0x11

    if-ne v10, v1, :cond_2f

    .line 4026
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v2, 0xe

    add-int/2addr v1, v2

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    .line 4027
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0xf

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 4028
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v3, 0x10

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v1, v4, :cond_2e

    const/16 v5, 0x39

    if-le v1, v5, :cond_2b

    goto :goto_b

    :cond_2b
    if-lt v2, v4, :cond_2e

    if-le v2, v5, :cond_2c

    goto :goto_b

    :cond_2c
    if-lt v3, v4, :cond_2e

    if-le v3, v5, :cond_2d

    goto :goto_b

    :cond_2d
    sub-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x64

    sub-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    sub-int/2addr v3, v4

    add-int/2addr v1, v3

    move v6, v1

    goto :goto_c

    :cond_2e
    :goto_b
    return v15

    :cond_2f
    const/16 v4, 0x30

    const/4 v6, 0x0

    :goto_c
    sub-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v7, v4

    add-int/2addr v0, v7

    sub-int/2addr v8, v4

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v12, v4

    add-int v1, v8, v12

    add-int/lit8 v17, v17, -0x30

    mul-int/lit8 v17, v17, 0xa

    add-int/lit8 v18, v18, -0x30

    add-int v2, v17, v18

    move v15, v1

    move/from16 v34, v6

    move v6, v0

    move/from16 v0, v34

    goto :goto_d

    :cond_30
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 4051
    :goto_d
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v11, v6}, Ljava/util/Calendar;->set(II)V

    .line 4052
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 4053
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 4054
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    .line 4056
    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v16
.end method

.method public final scanLongValue()J
    .locals 13

    const/4 v0, 0x0

    .line 1708
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1712
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v2, 0x1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v3, 0x0

    add-int/2addr v3, v2

    .line 1716
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1719
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1720
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v3, v4, :cond_0

    .line 1723
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move-wide v3, v0

    const/4 v0, 0x1

    goto :goto_0

    .line 1721
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    const-wide/16 v5, 0x0

    .line 1732
    :goto_1
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v7, 0x30

    if-lt v1, v7, :cond_5

    const/16 v7, 0x39

    if-gt v1, v7, :cond_5

    add-int/lit8 v1, v1, -0x30

    const-wide v7, -0xcccccccccccccccL

    const-string v9, ", "

    const-string v10, "error long value, "

    cmp-long v11, v5, v7

    if-ltz v11, :cond_4

    const-wide/16 v7, 0xa

    mul-long v5, v5, v7

    int-to-long v7, v1

    add-long v11, v3, v7

    cmp-long v1, v5, v11

    if-ltz v1, :cond_3

    sub-long/2addr v5, v7

    .line 1748
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1751
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1752
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v7, :cond_2

    const/16 v1, 0x1a

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1754
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_2
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_1

    .line 1741
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1736
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez v0, :cond_6

    neg-long v5, v5

    :cond_6
    return-wide v5
.end method

.method public final scanNumber()V
    .locals 9

    .line 1292
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    const/4 v1, 0x0

    .line 1293
    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    .line 1295
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x2d

    const/16 v4, 0x1a

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    .line 1296
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    .line 1299
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1300
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1302
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1307
    :cond_1
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x39

    const/16 v6, 0x30

    if-lt v0, v6, :cond_3

    if-gt v0, v2, :cond_3

    .line 1309
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1315
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1316
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_2

    const/16 v0, 0x1a

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1318
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_2
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_1

    .line 1322
    :cond_3
    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_6

    .line 1325
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1328
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1329
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_4

    const/16 v0, 0x1a

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1331
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_3
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1333
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    .line 1336
    :goto_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v0, v6, :cond_6

    if-gt v0, v2, :cond_6

    .line 1338
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1344
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1345
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_5

    const/16 v0, 0x1a

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1347
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_5
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_4

    .line 1352
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_7

    .line 1353
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1354
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_a

    :cond_7
    const/16 v1, 0x53

    if-ne v0, v1, :cond_8

    .line 1356
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1357
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_a

    :cond_8
    const/16 v1, 0x42

    if-ne v0, v1, :cond_9

    .line 1359
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1360
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_a

    :cond_9
    const/16 v1, 0x46

    if-ne v0, v1, :cond_a

    .line 1362
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1363
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1364
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    goto/16 :goto_a

    :cond_a
    const/16 v7, 0x44

    if-ne v0, v7, :cond_b

    .line 1366
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1367
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1368
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    goto/16 :goto_a

    :cond_b
    const/16 v8, 0x65

    if-eq v0, v8, :cond_c

    const/16 v8, 0x45

    if-ne v0, v8, :cond_15

    .line 1371
    :cond_c
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1374
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1375
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v8, :cond_d

    const/16 v0, 0x1a

    goto :goto_6

    :cond_d
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1377
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_6
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v8, 0x2b

    if-eq v0, v8, :cond_e

    if-ne v0, v3, :cond_10

    .line 1382
    :cond_e
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1385
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1386
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v3, :cond_f

    const/16 v0, 0x1a

    goto :goto_7

    :cond_f
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1388
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_7
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1393
    :cond_10
    :goto_8
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v0, v6, :cond_12

    if-gt v0, v2, :cond_12

    .line 1395
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1401
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1402
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v3, :cond_11

    const/16 v0, 0x1a

    goto :goto_9

    :cond_11
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1404
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_9
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_8

    :cond_12
    if-eq v0, v7, :cond_13

    if-ne v0, v1, :cond_14

    .line 1410
    :cond_13
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1411
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1414
    :cond_14
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    .line 1415
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    .line 1418
    :cond_15
    :goto_a
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x3

    .line 1419
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_b

    :cond_16
    const/4 v0, 0x2

    .line 1421
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :goto_b
    return-void
.end method

.method public final scanNumberValue()Ljava/lang/Number;
    .locals 17

    move-object/from16 v1, p0

    .line 1452
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v2, 0x0

    .line 1456
    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1460
    iget-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x2d

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1

    const-wide/high16 v7, -0x8000000000000000L

    const/4 v3, 0x0

    add-int/2addr v3, v6

    .line 1464
    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v3, v0, 0x1

    .line 1467
    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1468
    iget v9, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v9, :cond_0

    const/16 v3, 0x1a

    goto :goto_0

    :cond_0
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1470
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_0
    iput-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    :goto_1
    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    .line 1479
    :goto_2
    iget-char v12, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v13, 0x39

    const/16 v14, 0x30

    if-lt v12, v14, :cond_5

    if-gt v12, v13, :cond_5

    add-int/lit8 v12, v12, -0x30

    const-wide v13, -0xcccccccccccccccL

    cmp-long v15, v9, v13

    if-gez v15, :cond_2

    const/4 v11, 0x1

    :cond_2
    const-wide/16 v13, 0xa

    mul-long v9, v9, v13

    int-to-long v12, v12

    add-long v14, v7, v12

    cmp-long v16, v9, v14

    if-gez v16, :cond_3

    const/4 v11, 0x1

    :cond_3
    sub-long/2addr v9, v12

    .line 1495
    iget v12, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v12, v6

    iput v12, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1498
    iget v12, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v12, v6

    iput v12, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1499
    iget v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v12, v13, :cond_4

    const/16 v12, 0x1a

    goto :goto_3

    :cond_4
    iget-object v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1501
    invoke-virtual {v13, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    :goto_3
    iput-char v12, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_2

    :cond_5
    if-nez v3, :cond_6

    neg-long v9, v9

    :cond_6
    const/16 v7, 0x4c

    const/16 v8, 0x44

    const/16 v15, 0x46

    if-ne v12, v7, :cond_7

    .line 1510
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v7, v6

    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1511
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1512
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    :goto_4
    move v12, v3

    move-object v2, v7

    goto :goto_5

    :cond_7
    const/16 v7, 0x53

    if-ne v12, v7, :cond_8

    .line 1514
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v7, v6

    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1515
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    long-to-int v7, v9

    int-to-short v7, v7

    .line 1516
    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    goto :goto_4

    :cond_8
    const/16 v7, 0x42

    if-ne v12, v7, :cond_9

    .line 1518
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v7, v6

    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1519
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    long-to-int v7, v9

    int-to-byte v7, v7

    .line 1520
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    goto :goto_4

    :cond_9
    if-ne v12, v15, :cond_a

    .line 1522
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v7, v6

    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1523
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    long-to-float v7, v9

    .line 1524
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_4

    :cond_a
    if-ne v12, v8, :cond_b

    .line 1526
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v7, v6

    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1527
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    move v12, v3

    long-to-double v2, v9

    .line 1528
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_5

    :cond_b
    move v12, v3

    const/4 v2, 0x0

    .line 1532
    :goto_5
    iget-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x2e

    if-ne v3, v5, :cond_f

    .line 1535
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v3, v6

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1538
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v6

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1539
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v7, :cond_c

    const/16 v3, 0x1a

    goto :goto_6

    :cond_c
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1541
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_6
    iput-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1545
    :goto_7
    iget-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v3, v14, :cond_e

    if-gt v3, v13, :cond_e

    .line 1547
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v3, v6

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1553
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v6

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1554
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v7, :cond_d

    const/16 v3, 0x1a

    goto :goto_8

    :cond_d
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1556
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_8
    iput-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_7

    :cond_e
    const/4 v7, 0x1

    goto :goto_9

    :cond_f
    const/4 v7, 0x0

    .line 1562
    :goto_9
    iget-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x65

    const/16 v15, 0x2b

    if-eq v3, v5, :cond_11

    const/16 v5, 0x45

    if-ne v3, v5, :cond_10

    goto :goto_a

    :cond_10
    const/4 v3, 0x0

    const/4 v5, 0x0

    goto/16 :goto_11

    .line 1564
    :cond_11
    :goto_a
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v3, v6

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1567
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v6

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1568
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v5, :cond_12

    const/16 v3, 0x1a

    goto :goto_b

    :cond_12
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1570
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_b
    iput-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v3, v15, :cond_13

    if-ne v3, v4, :cond_15

    .line 1575
    :cond_13
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v3, v6

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1578
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v6

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1579
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v5, :cond_14

    const/16 v3, 0x1a

    goto :goto_c

    :cond_14
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1581
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_c
    iput-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1586
    :cond_15
    :goto_d
    iget-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v3, v14, :cond_17

    if-gt v3, v13, :cond_17

    .line 1588
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v3, v6

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1594
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v6

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1595
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v5, :cond_16

    const/16 v3, 0x1a

    goto :goto_e

    :cond_16
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1597
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_e
    iput-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_d

    :cond_17
    if-eq v3, v8, :cond_19

    const/16 v5, 0x46

    if-ne v3, v5, :cond_18

    goto :goto_f

    :cond_18
    const/4 v3, 0x0

    goto :goto_10

    .line 1603
    :cond_19
    :goto_f
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v5, v6

    iput v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1605
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :goto_10
    const/4 v5, 0x1

    :goto_11
    if-nez v7, :cond_1d

    if-nez v5, :cond_1d

    if-eqz v11, :cond_1a

    .line 1614
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int v3, v2, v0

    .line 1615
    new-array v3, v3, [C

    .line 1616
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v2, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 1617
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    .line 1618
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :cond_1a
    if-nez v2, :cond_1c

    const-wide/32 v2, -0x80000000

    cmp-long v0, v9, v2

    if-lez v0, :cond_1b

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v9, v2

    if-gez v0, :cond_1b

    long-to-int v0, v9

    .line 1622
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_12

    .line 1624
    :cond_1b
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_1c
    :goto_12
    return-object v2

    .line 1630
    :cond_1d
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v2, v0

    if-eqz v3, :cond_1e

    add-int/lit8 v2, v2, -0x1

    .line 1636
    :cond_1e
    iget-object v8, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v9, v8

    if-ge v2, v9, :cond_1f

    .line 1637
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v10, v0, v2

    const/4 v7, 0x0

    invoke-virtual {v9, v0, v10, v8, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1638
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    goto :goto_13

    :cond_1f
    const/4 v7, 0x0

    .line 1640
    new-array v8, v2, [C

    .line 1641
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v10, v0, v2

    invoke-virtual {v9, v0, v10, v8, v7}, Ljava/lang/String;->getChars(II[CI)V

    move-object v0, v8

    :goto_13
    if-nez v5, :cond_20

    .line 1646
    iget v8, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    iget v9, v9, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_20

    .line 1648
    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v0, v7, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_19

    :cond_20
    const/16 v8, 0x9

    if-gt v2, v8, :cond_29

    if-nez v5, :cond_29

    .line 1654
    :try_start_0
    aget-char v5, v0, v7

    if-eq v5, v4, :cond_22

    if-ne v5, v15, :cond_21

    goto :goto_14

    :cond_21
    const/4 v4, 0x1

    goto :goto_15

    :cond_22
    :goto_14
    const/4 v4, 0x2

    .line 1656
    aget-char v5, v0, v6

    :goto_15
    sub-int/2addr v5, v14

    const/4 v7, 0x0

    :goto_16
    if-ge v4, v2, :cond_25

    .line 1662
    aget-char v8, v0, v4

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_23

    const/4 v7, 0x1

    goto :goto_17

    :cond_23
    add-int/lit8 v8, v8, -0x30

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v8

    if-eqz v7, :cond_24

    mul-int/lit8 v7, v7, 0xa

    :cond_24
    :goto_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_25
    const/16 v0, 0x46

    if-ne v3, v0, :cond_27

    int-to-float v0, v5

    int-to-float v2, v7

    div-float/2addr v0, v2

    if-eqz v12, :cond_26

    neg-float v0, v0

    .line 1682
    :cond_26
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_27
    int-to-double v2, v5

    int-to-double v4, v7

    .line 1685
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    if-eqz v12, :cond_28

    neg-double v2, v2

    .line 1690
    :cond_28
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 1693
    :cond_29
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v2}, Ljava/lang/String;-><init>([CII)V

    const/16 v0, 0x46

    if-ne v3, v0, :cond_2a

    .line 1695
    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    :goto_18
    move-object v3, v0

    goto :goto_19

    .line 1697
    :cond_2a
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_18

    :goto_19
    return-object v3

    :catch_0
    move-exception v0

    .line 1700
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    :goto_1a
    throw v2

    :goto_1b
    goto :goto_1a
.end method

.method public final scanString()V
    .locals 11

    .line 987
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 989
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 990
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    sub-int v1, v3, v1

    .line 999
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v2

    invoke-virtual {p0, v4, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x5c

    if-lez v1, :cond_4

    add-int/lit8 v8, v1, -0x1

    .line 1000
    aget-char v8, v4, v8

    if-ne v8, v7, :cond_4

    add-int/lit8 v8, v1, -0x2

    const/4 v9, 0x1

    :goto_1
    if-ltz v8, :cond_0

    .line 1005
    aget-char v10, v4, v8

    if-ne v10, v7, :cond_0

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 1011
    :cond_0
    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_1

    goto :goto_2

    .line 1015
    :cond_1
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    sub-int v7, v6, v3

    add-int/2addr v7, v1

    .line 1019
    array-length v8, v4

    if-lt v7, v8, :cond_3

    .line 1020
    array-length v8, v4

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    if-ge v8, v7, :cond_2

    move v8, v7

    .line 1024
    :cond_2
    new-array v8, v8, [C

    .line 1025
    array-length v9, v4

    invoke-static {v4, v5, v8, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v8

    .line 1028
    :cond_3
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v3, v6, v4, v1}, Ljava/lang/String;->getChars(II[CI)V

    move v3, v6

    move v1, v7

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-nez v6, :cond_6

    :goto_3
    if-ge v5, v1, :cond_6

    .line 1037
    aget-char v0, v4, v5

    if-ne v0, v7, :cond_5

    const/4 v6, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1043
    :cond_6
    iput-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1044
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1045
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1046
    iput-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    add-int/2addr v3, v2

    .line 1048
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1052
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v0, :cond_7

    const/16 v0, 0x1a

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1054
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_4
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v0, 0x4

    .line 1057
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 992
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unclosed str, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public scanStringValue(C)Ljava/lang/String;
    .locals 7

    .line 1061
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    .line 1062
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 1068
    sget-boolean v3, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 1069
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    sub-int v3, v1, v0

    .line 1072
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v5

    .line 1073
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5, v4, v3}, Ljava/lang/String;-><init>([CII)V

    move-object v3, v6

    :goto_0
    const/16 v5, 0x5c

    .line 1076
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v2, :cond_3

    :goto_1
    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    :goto_2
    if-ltz v2, :cond_1

    .line 1080
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1086
    :cond_1
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    sub-int p1, v1, v0

    .line 1093
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v0

    .line 1094
    invoke-static {v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 1089
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 1097
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1101
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, p1, :cond_4

    const/16 p1, 0x1a

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1103
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_4
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-object v3

    .line 1064
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unclosed str, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 4

    .line 703
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0xd

    if-eq v0, v1, :cond_6

    const/16 v2, 0x9

    if-eq v0, v2, :cond_6

    const/16 v2, 0xc

    if-eq v0, v2, :cond_6

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x22

    if-ne v0, v2, :cond_1

    .line 716
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v2, 0x27

    if-ne v0, v2, :cond_2

    .line 720
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v2, 0x7d

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 724
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 725
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v3

    :cond_3
    const/16 v1, 0x2c

    if-ne v0, v1, :cond_4

    .line 730
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 p1, 0x10

    .line 731
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v3

    :cond_4
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_5

    const/16 p1, 0x14

    .line 736
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v3

    .line 740
    :cond_5
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 709
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0
.end method

.method public scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 10

    .line 747
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 748
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v2, p2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    sub-int v0, v2, v0

    .line 757
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x5c

    if-lez v0, :cond_4

    add-int/lit8 v7, v0, -0x1

    .line 758
    aget-char v7, v3, v7

    if-ne v7, v6, :cond_4

    add-int/lit8 v7, v0, -0x2

    const/4 v8, 0x1

    :goto_1
    if-ltz v7, :cond_0

    .line 763
    aget-char v9, v3, v7

    if-ne v9, v6, :cond_0

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 769
    :cond_0
    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_1

    goto :goto_2

    .line 773
    :cond_1
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, p2, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    sub-int v6, v5, v2

    add-int/2addr v6, v0

    .line 777
    array-length v7, v3

    if-lt v6, v7, :cond_3

    .line 778
    array-length v7, v3

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x2

    if-ge v7, v6, :cond_2

    move v7, v6

    .line 782
    :cond_2
    new-array v7, v7, [C

    .line 783
    array-length v8, v3

    invoke-static {v3, v4, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v7

    .line 786
    :cond_3
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v7, v2, v5, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    move v2, v5

    move v0, v6

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-nez v5, :cond_9

    const/4 p2, 0x0

    const/4 v7, 0x0

    :goto_3
    if-ge p2, v0, :cond_6

    .line 796
    aget-char v8, v3, p2

    mul-int/lit8 v7, v7, 0x1f

    add-int/2addr v7, v8

    if-ne v8, v6, :cond_5

    const/4 v5, 0x1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_7

    .line 804
    invoke-static {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_7
    const/16 p2, 0x14

    if-ge v0, p2, :cond_8

    .line 806
    invoke-virtual {p1, v3, v4, v0, v7}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_4

    .line 809
    :cond_9
    invoke-static {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object p1

    :goto_4
    add-int/2addr v2, v1

    .line 812
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 816
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, p2, :cond_a

    const/16 p2, 0x1a

    goto :goto_5

    :cond_a
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 818
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    :goto_5
    iput-char p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-object p1

    .line 750
    :cond_b
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unclosed str, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 5

    .line 948
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 950
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    .line 958
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 959
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 961
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    move-result v1

    .line 963
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    array-length v4, v2

    if-ge v1, v4, :cond_3

    .line 964
    aget-boolean v2, v2, v1

    if-nez v2, :cond_3

    .line 975
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x12

    .line 976
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 978
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    const-string v3, "null"

    .line 979
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 983
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 971
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    goto :goto_2

    .line 952
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal identifier : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method protected skipComment()V
    .locals 4

    .line 918
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 919
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    .line 921
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 922
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 923
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    :cond_1
    const/16 v2, 0x2a

    if-ne v0, v2, :cond_5

    .line 928
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 930
    :cond_2
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_3

    .line 932
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 933
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v1, :cond_2

    .line 934
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_1

    .line 940
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    .line 943
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "invalid comment"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method final skipWhitespace()V
    .locals 3

    .line 1270
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_2

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-ne v0, v1, :cond_2

    .line 1280
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipComment()V

    goto :goto_0

    .line 1277
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 2

    .line 1219
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1220
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1221
    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method final sub_chars(II)[C
    .locals 3

    .line 1236
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v1, v0

    const/4 v2, 0x0

    if-ge p2, v1, :cond_0

    .line 1237
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v1, p1, p2, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1238
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    return-object p1

    .line 1240
    :cond_0
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1241
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v1, p1, p2, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    return-object v0
.end method

.method public final token()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v0
.end method
