.class public final synthetic Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$Backup$qlCCoxb1HyjbYmCKFPIsyiioHO8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/ArrayUtils$Consumer;


# instance fields
.field public final synthetic f$0:[Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;


# direct methods
.method public synthetic constructor <init>([Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$Backup$qlCCoxb1HyjbYmCKFPIsyiioHO8;->f$0:[Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;

    return-void
.end method


# virtual methods
.method public final accept(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$Backup$qlCCoxb1HyjbYmCKFPIsyiioHO8;->f$0:[Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;

    check-cast p3, Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;

    invoke-static {v0, p1, p2, p3}, Lcom/coderpage/mine/app/tally/module/backup/Backup;->lambda$restoreCategoryTable$4([Lcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;IILcom/coderpage/mine/app/tally/persistence/sql/entity/CategoryEntity;)V

    return-void
.end method
