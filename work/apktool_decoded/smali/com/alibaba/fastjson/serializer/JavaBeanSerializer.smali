.class public Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
.super Ljava/lang/Object;
.source "JavaBeanSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field private static final false_chars:[C

.field private static final true_chars:[C


# instance fields
.field protected features:I

.field private final getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

.field private final sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

.field protected typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 39
    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->true_chars:[C

    const/4 v0, 0x5

    new-array v0, v0, [C

    .line 40
    fill-array-data v0, :array_1

    sput-object v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->false_chars:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x74s
        0x72s
        0x75s
        0x65s
    .end array-data

    :array_1
    .array-data 2
        0x66s
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    check-cast v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/PropertyNamingStrategy;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZZZ",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 46
    iput v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    const/4 v2, 0x0

    if-eqz p5, :cond_0

    .line 90
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object v13, p1

    .line 91
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONType;

    goto :goto_0

    :cond_0
    move-object v13, p1

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 95
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v4

    iput v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    .line 97
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeName:Ljava/lang/String;

    .line 98
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 99
    iput-object v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeName:Ljava/lang/String;

    :cond_1
    const/4 v9, 0x0

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    move-object v7, v3

    move-object/from16 v8, p3

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    .line 104
    invoke-static/range {v4 .. v12}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;IZLcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;ZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v4

    .line 113
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 116
    new-instance v7, Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-direct {v7, v6}, Lcom/alibaba/fastjson/serializer/FieldSerializer;-><init>(Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 118
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 121
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-interface {v5, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    if-eqz v3, :cond_3

    .line 127
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_5

    .line 130
    array-length v2, v2

    if-eqz v2, :cond_5

    const/4 v9, 0x1

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    move-object v7, v3

    move-object/from16 v8, p3

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    .line 131
    invoke-static/range {v4 .. v12}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;IZLcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;ZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v1

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 143
    new-instance v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-direct {v4, v3}, Lcom/alibaba/fastjson/serializer/FieldSerializer;-><init>(Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 144
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 147
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    goto :goto_3

    .line 149
    :cond_5
    array-length v2, v4

    new-array v2, v2, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 150
    array-length v3, v4

    invoke-static {v4, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 153
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 154
    iput-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    goto :goto_3

    .line 156
    :cond_6
    iput-object v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    :goto_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/PropertyNamingStrategy;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    const/4 v0, 0x0

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->map([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)V

    return-void
.end method

.method private static varargs map([Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 65
    invoke-interface {v0, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 627
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 629
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 630
    iget-object v5, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 162
    iget-object v6, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez v3, :cond_0

    .line 165
    invoke-virtual {v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 169
    :cond_0
    iget-object v7, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    if-eqz v7, :cond_1

    iget-object v7, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerialContext;->features:I

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v8, v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v7, v8

    if-nez v7, :cond_2

    :cond_1
    iget-object v7, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-eqz v7, :cond_2

    iget-object v7, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    .line 172
    invoke-virtual {v7, v3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 173
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    return-void

    .line 179
    :cond_2
    iget v7, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v8, v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    .line 180
    iget-object v7, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    goto :goto_0

    .line 182
    :cond_3
    iget-object v7, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 185
    :goto_0
    iget-object v8, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 187
    iget v9, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v10, v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v9, v10

    if-nez v9, :cond_5

    .line 188
    new-instance v9, Lcom/alibaba/fastjson/serializer/SerialContext;

    iget v10, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    invoke-direct {v9, v8, v3, v4, v10}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v9, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 189
    iget-object v9, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-nez v9, :cond_4

    .line 190
    new-instance v9, Ljava/util/IdentityHashMap;

    invoke-direct {v9}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v9, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    .line 192
    :cond_4
    iget-object v9, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    iget-object v10, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    invoke-virtual {v9, v3, v10}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_5
    iget v9, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v10, v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_7

    iget v9, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v12, v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v9, v12

    if-eqz v9, :cond_6

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v9, 0x1

    :goto_2
    if-eqz v9, :cond_8

    const/16 v12, 0x5b

    goto :goto_3

    :cond_8
    const/16 v12, 0x7b

    :goto_3
    if-eqz v9, :cond_9

    const/16 v13, 0x5d

    goto :goto_4

    :cond_9
    const/16 v13, 0x7d

    .line 205
    :goto_4
    :try_start_0
    iget v14, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v14, v11

    .line 206
    iget-object v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v15, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-le v14, v15, :cond_b

    .line 207
    :try_start_1
    iget-object v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v15, :cond_a

    .line 208
    invoke-virtual {v6, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_5

    .line 210
    :cond_a
    invoke-virtual {v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v14, 0x1

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v1, v8

    goto/16 :goto_37

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v1, v8

    goto/16 :goto_36

    .line 214
    :cond_b
    :goto_5
    :try_start_2
    iget-object v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v11, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v12, v15, v11

    .line 215
    iput v14, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 218
    array-length v11, v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-lez v11, :cond_c

    :try_start_3
    iget v11, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v12, v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_c

    .line 220
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 221
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    :cond_c
    :try_start_4
    iget v11, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v12, v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    and-int/2addr v11, v12

    if-nez v11, :cond_e

    :try_start_5
    iget v11, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v12, v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_d

    if-nez v5, :cond_e

    iget v11, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v12, v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_e

    iget-object v11, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    iget-object v11, v11, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    if-eqz v11, :cond_d

    goto :goto_6

    :cond_d
    const/4 v11, 0x0

    goto :goto_7

    :cond_e
    :goto_6
    const/4 v11, 0x1

    :goto_7
    if-eqz v11, :cond_10

    .line 234
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    if-eq v11, v5, :cond_10

    .line 236
    iget-object v5, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object v5, v5, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    invoke-virtual {v6, v5, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 237
    iget-object v5, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeName:Ljava/lang/String;

    if-nez v5, :cond_f

    .line 239
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 241
    :cond_f
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v5, 0x1

    goto :goto_8

    :cond_10
    const/4 v5, 0x0

    :goto_8
    const/16 v11, 0x2c

    if-eqz v5, :cond_11

    const/16 v5, 0x2c

    goto :goto_9

    :cond_11
    const/4 v5, 0x0

    .line 249
    :goto_9
    :try_start_6
    iget-object v12, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v12, :cond_12

    .line 250
    :try_start_7
    iget-object v12, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    .line 251
    invoke-virtual {v14, v2, v3, v5}, Lcom/alibaba/fastjson/serializer/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_a

    :cond_12
    if-ne v5, v11, :cond_13

    const/4 v5, 0x1

    goto :goto_b

    :cond_13
    const/4 v5, 0x0

    .line 256
    :goto_b
    :try_start_8
    iget v12, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v14, v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    and-int/2addr v12, v14

    if-eqz v12, :cond_14

    :try_start_9
    iget v12, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v14, v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    and-int/2addr v12, v14

    if-nez v12, :cond_14

    const/4 v12, 0x1

    goto :goto_c

    :cond_14
    const/4 v12, 0x0

    .line 258
    :goto_c
    :try_start_a
    iget v14, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v15, v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v14, v15

    if-eqz v14, :cond_15

    const/4 v14, 0x1

    goto :goto_d

    :cond_15
    const/4 v14, 0x0

    .line 259
    :goto_d
    iget v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v10, v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v10, v15

    if-eqz v10, :cond_16

    const/4 v10, 0x1

    goto :goto_e

    :cond_16
    const/4 v10, 0x0

    .line 261
    :goto_e
    iget-object v15, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    .line 262
    iget-object v11, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    .line 263
    iget-object v1, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->valueFilters:Ljava/util/List;

    move/from16 v16, v5

    .line 264
    iget-object v5, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v17, v8

    const/4 v4, 0x0

    .line 266
    :goto_f
    :try_start_b
    array-length v8, v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-ge v4, v8, :cond_59

    .line 267
    :try_start_c
    aget-object v8, v7, v4

    move/from16 v18, v13

    .line 268
    iget-object v13, v8, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v19, v7

    .line 269
    iget-object v7, v13, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move/from16 v20, v4

    .line 270
    iget-object v4, v13, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move/from16 v21, v14

    .line 271
    iget v14, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v22, v12

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v12, v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v12, v14

    if-eqz v12, :cond_17

    .line 272
    iget-object v12, v13, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v12, :cond_17

    .line 274
    iget-boolean v12, v13, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    if-eqz v12, :cond_17

    goto :goto_11

    :cond_17
    if-eqz v5, :cond_19

    .line 283
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_18
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_19

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    .line 284
    invoke-interface {v14, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_18

    const/4 v12, 0x0

    goto :goto_10

    :cond_19
    const/4 v12, 0x1

    :goto_10
    if-nez v12, :cond_1a

    :goto_11
    move-object/from16 v30, v1

    move-object/from16 v28, v5

    :goto_12
    move-object/from16 v29, v11

    move-object/from16 v31, v15

    goto/16 :goto_21

    :cond_1a
    const/4 v12, 0x0

    const-wide/16 v23, 0x0

    .line 302
    iget-boolean v14, v13, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v14, :cond_1e

    .line 303
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, v14, :cond_1b

    .line 304
    iget-object v14, v13, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v14, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    move-wide/from16 v26, v23

    const/16 v23, 0x0

    const/16 v25, 0x0

    move/from16 v24, v14

    const/4 v14, 0x1

    goto :goto_15

    .line 306
    :cond_1b
    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v7, v14, :cond_1c

    .line 307
    iget-object v14, v13, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v14, v3}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v23

    move-wide/from16 v26, v23

    const/4 v14, 0x1

    const/16 v23, 0x0

    goto :goto_14

    .line 309
    :cond_1c
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v7, v14, :cond_1d

    .line 310
    iget-object v14, v13, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v14, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v14

    move/from16 v25, v14

    move-wide/from16 v26, v23

    const/4 v14, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    goto :goto_15

    .line 313
    :cond_1d
    iget-object v12, v13, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v12, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_13

    .line 317
    :cond_1e
    invoke-virtual {v8, v3}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    :goto_13
    move-wide/from16 v26, v23

    const/4 v14, 0x0

    const/16 v23, 0x1

    :goto_14
    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_15
    if-eqz v15, :cond_24

    if-eqz v14, :cond_21

    move-object/from16 v28, v5

    .line 325
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, v5, :cond_1f

    .line 326
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_16
    const/16 v23, 0x1

    goto :goto_17

    .line 328
    :cond_1f
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v7, v5, :cond_20

    .line 329
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_16

    .line 331
    :cond_20
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v7, v5, :cond_22

    .line 332
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    goto :goto_16

    :cond_21
    move-object/from16 v28, v5

    .line 337
    :cond_22
    :goto_17
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_25

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v30, v5

    move-object/from16 v5, v29

    check-cast v5, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 338
    invoke-interface {v5, v3, v4, v12}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    const/4 v5, 0x0

    goto :goto_19

    :cond_23
    move-object/from16 v5, v30

    goto :goto_18

    :cond_24
    move-object/from16 v28, v5

    :cond_25
    const/4 v5, 0x1

    :goto_19
    if-nez v5, :cond_26

    move-object/from16 v30, v1

    goto/16 :goto_12

    :cond_26
    if-eqz v11, :cond_2a

    if-eqz v14, :cond_29

    if-nez v23, :cond_29

    .line 354
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, v5, :cond_27

    .line 355
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_1a
    move-object v12, v5

    const/16 v23, 0x1

    goto :goto_1b

    .line 357
    :cond_27
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v7, v5, :cond_28

    .line 358
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_1a

    .line 360
    :cond_28
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v7, v5, :cond_29

    .line 361
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_1a

    .line 366
    :cond_29
    :goto_1b
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object/from16 v29, v11

    move-object v11, v4

    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_2b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v31, v5

    move-object/from16 v5, v30

    check-cast v5, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 367
    invoke-interface {v5, v3, v11, v12}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v5, v31

    goto :goto_1c

    :cond_2a
    move-object/from16 v29, v11

    move-object v11, v4

    :cond_2b
    if-eqz v1, :cond_30

    if-eqz v14, :cond_2e

    if-nez v23, :cond_2e

    .line 376
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, v5, :cond_2c

    .line 377
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_1d
    const/16 v23, 0x1

    goto :goto_1e

    .line 380
    :cond_2c
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v7, v5, :cond_2d

    .line 381
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_1d

    .line 384
    :cond_2d
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v7, v5, :cond_2e

    .line 385
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    goto :goto_1d

    .line 391
    :cond_2e
    :goto_1e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object/from16 v30, v1

    move-object v1, v12

    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_2f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v32, v5

    move-object/from16 v5, v31

    check-cast v5, Lcom/alibaba/fastjson/serializer/ValueFilter;

    .line 392
    invoke-interface {v5, v3, v4, v1}, Lcom/alibaba/fastjson/serializer/ValueFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v5, v32

    goto :goto_1f

    :cond_2f
    move-object/from16 v34, v12

    move-object v12, v1

    move-object/from16 v1, v34

    goto :goto_20

    :cond_30
    move-object/from16 v30, v1

    move-object v1, v12

    :goto_20
    if-eqz v23, :cond_31

    if-nez v12, :cond_31

    if-nez v9, :cond_31

    .line 398
    iget-boolean v5, v8, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeNull:Z

    if-nez v5, :cond_31

    iget v5, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move-object/from16 v31, v15

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v15, v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v15

    if-nez v5, :cond_32

    goto :goto_21

    :cond_31
    move-object/from16 v31, v15

    :cond_32
    if-eqz v23, :cond_35

    if-eqz v12, :cond_35

    if-eqz v10, :cond_35

    .line 405
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v7, v5, :cond_33

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v7, v5, :cond_33

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v7, v5, :cond_33

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v7, v5, :cond_33

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v7, v5, :cond_33

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v7, v5, :cond_34

    :cond_33
    instance-of v5, v12, Ljava/lang/Number;

    if-eqz v5, :cond_34

    move-object v5, v12

    check-cast v5, Ljava/lang/Number;

    .line 413
    invoke-virtual {v5}, Ljava/lang/Number;->byteValue()B

    move-result v5

    if-nez v5, :cond_34

    goto :goto_21

    .line 415
    :cond_34
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v7, v5, :cond_35

    instance-of v5, v12, Ljava/lang/Boolean;

    if-eqz v5, :cond_35

    move-object v5, v12

    check-cast v5, Ljava/lang/Boolean;

    .line 417
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_35

    :goto_21
    move/from16 v32, v10

    const/4 v4, 0x0

    const/16 v33, 0x2c

    goto/16 :goto_2f

    :cond_35
    if-eqz v16, :cond_38

    .line 425
    iget v5, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v15, 0x1

    add-int/2addr v5, v15

    .line 426
    iget-object v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v15, v15

    if-le v5, v15, :cond_37

    .line 427
    iget-object v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v15, :cond_36

    .line 428
    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_22

    .line 430
    :cond_36
    invoke-virtual {v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    const/4 v5, 0x1

    .line 434
    :cond_37
    :goto_22
    iget-object v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move/from16 v32, v10

    iget v10, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v33, 0x2c

    aput-char v33, v15, v10

    .line 435
    iput v5, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 437
    iget v5, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v10, v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v10

    if-eqz v5, :cond_39

    .line 438
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    goto :goto_23

    :cond_38
    move/from16 v32, v10

    const/16 v33, 0x2c

    :cond_39
    :goto_23
    if-eq v11, v4, :cond_3c

    if-nez v9, :cond_3a

    const/4 v1, 0x1

    .line 444
    invoke-virtual {v6, v11, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 447
    :cond_3a
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    :cond_3b
    :goto_24
    const/4 v4, 0x0

    goto/16 :goto_2e

    :cond_3c
    if-eq v1, v12, :cond_3e

    if-nez v9, :cond_3d

    .line 450
    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    .line 452
    :cond_3d
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto :goto_24

    :cond_3e
    if-nez v9, :cond_43

    if-eqz v22, :cond_42

    .line 458
    iget-object v1, v8, Lcom/alibaba/fastjson/serializer/FieldSerializer;->name_chars:[C

    .line 460
    array-length v4, v1

    .line 462
    iget v5, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v5, v4

    .line 463
    iget-object v10, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v10, v10

    if-le v5, v10, :cond_41

    .line 464
    iget-object v10, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v10, :cond_3f

    .line 465
    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_25

    :cond_3f
    const/4 v5, 0x0

    .line 468
    :cond_40
    iget-object v10, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v10, v10

    iget v11, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v10, v11

    .line 469
    iget-object v11, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v1, v5, v11, v15, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    iget-object v11, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v11, v11

    iput v11, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 471
    invoke-virtual {v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    sub-int/2addr v4, v10

    add-int/2addr v5, v10

    .line 474
    iget-object v10, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v10, v10

    if-gt v4, v10, :cond_40

    move v10, v5

    move v5, v4

    goto :goto_26

    :cond_41
    :goto_25
    const/4 v10, 0x0

    .line 478
    :goto_26
    iget-object v11, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v1, v10, v11, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 479
    iput v5, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_27

    .line 482
    :cond_42
    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    :cond_43
    :goto_27
    if-eqz v14, :cond_4d

    if-nez v23, :cond_4d

    .line 487
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, v1, :cond_4a

    const/high16 v1, -0x80000000

    move/from16 v14, v24

    if-ne v14, v1, :cond_44

    const-string v1, "-2147483648"

    .line 491
    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_24

    :cond_44
    if-gez v14, :cond_45

    neg-int v1, v14

    goto :goto_28

    :cond_45
    move v1, v14

    :goto_28
    const/4 v4, 0x0

    .line 496
    :goto_29
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sizeTable:[I

    aget v5, v5, v4

    if-gt v1, v5, :cond_49

    add-int/lit8 v4, v4, 0x1

    if-gez v14, :cond_46

    add-int/lit8 v4, v4, 0x1

    .line 507
    :cond_46
    iget v1, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v4

    .line 508
    iget-object v5, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    if-le v1, v5, :cond_48

    .line 509
    iget-object v5, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v5, :cond_47

    .line 510
    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_2a

    .line 512
    :cond_47
    new-array v5, v4, [C

    int-to-long v7, v14

    .line 513
    invoke-static {v7, v8, v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    const/4 v7, 0x0

    .line 514
    invoke-virtual {v6, v5, v7, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    const/4 v4, 0x1

    goto :goto_2b

    :cond_48
    :goto_2a
    const/4 v4, 0x0

    :goto_2b
    if-nez v4, :cond_3b

    int-to-long v4, v14

    .line 520
    iget-object v7, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v4, v5, v1, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 521
    iput v1, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto/16 :goto_24

    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 525
    :cond_4a
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v7, v1, :cond_4b

    .line 526
    iget-object v1, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-wide/from16 v4, v26

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto/16 :goto_24

    .line 527
    :cond_4b
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v7, v1, :cond_3b

    if-eqz v25, :cond_4c

    .line 529
    iget-object v1, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    sget-object v4, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->true_chars:[C

    array-length v5, v4

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto/16 :goto_24

    .line 531
    :cond_4c
    iget-object v1, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    sget-object v4, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->false_chars:[C

    array-length v5, v4

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto/16 :goto_24

    :cond_4d
    if-nez v9, :cond_58

    .line 536
    const-class v1, Ljava/lang/String;

    if-ne v7, v1, :cond_52

    if-nez v12, :cond_50

    .line 538
    iget v1, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v4

    if-nez v1, :cond_4f

    iget v1, v8, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_4e

    goto :goto_2c

    .line 543
    :cond_4e
    invoke-virtual {v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto/16 :goto_24

    :cond_4f
    :goto_2c
    const-string v1, ""

    .line 541
    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto/16 :goto_24

    .line 546
    :cond_50
    check-cast v12, Ljava/lang/String;

    if-eqz v21, :cond_51

    .line 549
    invoke-virtual {v6, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto/16 :goto_24

    :cond_51
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 551
    invoke-virtual {v6, v12, v1, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto/16 :goto_24

    .line 555
    :cond_52
    iget-boolean v1, v13, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    if-eqz v1, :cond_57

    if-eqz v12, :cond_56

    .line 557
    iget v1, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_55

    .line 558
    check-cast v12, Ljava/lang/Enum;

    .line 560
    invoke-virtual {v12}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    .line 561
    iget v4, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_53

    const/4 v15, 0x1

    goto :goto_2d

    :cond_53
    const/4 v15, 0x0

    :goto_2d
    if-eqz v15, :cond_54

    .line 564
    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto/16 :goto_24

    :cond_54
    const/4 v4, 0x0

    .line 566
    invoke-virtual {v6, v1, v4, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto :goto_2e

    :cond_55
    const/4 v4, 0x0

    .line 569
    check-cast v12, Ljava/lang/Enum;

    .line 570
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_2e

    :cond_56
    const/4 v4, 0x0

    .line 573
    invoke-virtual {v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_2e

    :cond_57
    const/4 v4, 0x0

    .line 576
    invoke-virtual {v8, v2, v12}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    goto :goto_2e

    :cond_58
    const/4 v4, 0x0

    .line 580
    invoke-virtual {v8, v2, v12}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_2e
    const/16 v16, 0x1

    :goto_2f
    add-int/lit8 v1, v20, 0x1

    move v4, v1

    move/from16 v13, v18

    move-object/from16 v7, v19

    move/from16 v14, v21

    move/from16 v12, v22

    move-object/from16 v5, v28

    move-object/from16 v11, v29

    move-object/from16 v1, v30

    move-object/from16 v15, v31

    move/from16 v10, v32

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object/from16 v1, v17

    goto/16 :goto_37

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object/from16 v1, v17

    goto/16 :goto_36

    :cond_59
    move-object/from16 v19, v7

    move/from16 v18, v13

    const/4 v4, 0x0

    const/16 v33, 0x2c

    .line 589
    :try_start_d
    iget-object v1, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v1, :cond_5b

    if-eqz v16, :cond_5a

    const/16 v10, 0x2c

    goto :goto_30

    :cond_5a
    const/4 v10, 0x0

    .line 591
    :goto_30
    :try_start_e
    iget-object v1, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/serializer/AfterFilter;

    .line 592
    invoke-virtual {v4, v2, v3, v10}, Lcom/alibaba/fastjson/serializer/AfterFilter;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result v10
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_31

    :cond_5b
    move-object/from16 v7, v19

    .line 596
    :try_start_f
    array-length v1, v7
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-lez v1, :cond_5c

    :try_start_10
    iget v1, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_5c

    .line 597
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 598
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 603
    :cond_5c
    :try_start_11
    iget v1, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 604
    iget-object v4, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v4, v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-le v1, v4, :cond_5e

    .line 605
    :try_start_12
    iget-object v4, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v4, :cond_5d

    .line 606
    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_32

    .line 608
    :cond_5d
    invoke-virtual {v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    const/4 v11, 0x1

    goto :goto_33

    :cond_5e
    :goto_32
    move v11, v1

    .line 612
    :goto_33
    :try_start_13
    iget-object v1, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v18, v1, v3

    .line 613
    iput v11, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    move-object/from16 v1, v17

    .line 622
    iput-object v1, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v1, v17

    goto :goto_34

    :catch_2
    move-exception v0

    move-object/from16 v1, v17

    goto :goto_35

    :catchall_3
    move-exception v0

    move-object v1, v8

    :goto_34
    move-object v3, v0

    goto :goto_37

    :catch_3
    move-exception v0

    move-object v1, v8

    :goto_35
    move-object v3, v0

    :goto_36
    :try_start_14
    const-string v4, "write javaBean error"

    move-object/from16 v5, p3

    if-eqz v5, :cond_5f

    .line 618
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", fieldName : "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 620
    :cond_5f
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v5, v4, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_34

    .line 622
    :goto_37
    iput-object v1, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto :goto_39

    :goto_38
    throw v3

    :goto_39
    goto :goto_38
.end method
