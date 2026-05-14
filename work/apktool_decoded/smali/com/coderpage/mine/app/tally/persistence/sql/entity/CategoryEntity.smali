.class public Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;
.super Ljava/lang/Object;
.source "CategoryEntity.java"


# static fields
.field public static final TYPE_EXPENSE:I = 0x0

.field public static final TYPE_INCOME:I = 0x1


# instance fields
.field private accountId:J

.field private icon:Ljava/lang/String;

.field private id:J

.field private name:Ljava/lang/String;

.field private order:I

.field private syncStatus:I

.field private type:I

.field private uniqueName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->name:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->icon:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccountId()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->accountId:J

    return-wide v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->order:I

    return v0
.end method

.method public getSyncStatus()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->syncStatus:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->type:I

    return v0
.end method

.method public getUniqueName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->uniqueName:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountId"
        }
    .end annotation

    .line 109
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->accountId:J

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 60
    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->id:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setOrder(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "order"
        }
    .end annotation

    .line 92
    iput p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->order:I

    return-void
.end method

.method public setSyncStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "syncStatus"
        }
    .end annotation

    .line 117
    iput p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->syncStatus:I

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 68
    iput p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->type:I

    return-void
.end method

.method public setUniqueName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uniqueName"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;->uniqueName:Ljava/lang/String;

    return-void
.end method
