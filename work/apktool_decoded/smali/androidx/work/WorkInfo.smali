.class public final Landroidx/work/WorkInfo;
.super Ljava/lang/Object;
.source "WorkInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/WorkInfo$State;
    }
.end annotation


# instance fields
.field private mId:Ljava/util/UUID;

.field private mOutputData:Landroidx/work/Data;

.field private mState:Landroidx/work/WorkInfo$State;

.field private mTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/work/WorkInfo$State;Landroidx/work/Data;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/work/WorkInfo$State;",
            "Landroidx/work/Data;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    .line 50
    iput-object p2, p0, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    .line 51
    iput-object p3, p0, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    .line 52
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 97
    :cond_1
    check-cast p1, Landroidx/work/WorkInfo;

    .line 99
    iget-object v2, p0, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    if-eqz v2, :cond_2

    iget-object v3, p1, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 100
    :cond_3
    iget-object v2, p0, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    iget-object v3, p1, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    if-eq v2, v3, :cond_4

    return v1

    .line 101
    :cond_4
    iget-object v2, p0, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    if-eqz v2, :cond_5

    iget-object v3, p1, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    invoke-virtual {v2, v3}, Landroidx/work/Data;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 105
    :cond_6
    iget-object v2, p0, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    iget-object p1, p1, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    if-eqz v2, :cond_7

    invoke-interface {v2, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_7
    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_9
    :goto_3
    return v1
.end method

.method public getId()Ljava/util/UUID;
    .locals 1

    .line 61
    iget-object v0, p0, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    return-object v0
.end method

.method public getOutputData()Landroidx/work/Data;
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    return-object v0
.end method

.method public getState()Landroidx/work/WorkInfo$State;
    .locals 1

    .line 70
    iget-object v0, p0, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    return-object v0
.end method

.method public getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 110
    iget-object v0, p0, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 111
    iget-object v2, p0, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/work/WorkInfo$State;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 112
    iget-object v2, p0, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/work/Data;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 113
    iget-object v2, p0, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkInfo{mId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOutputData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
