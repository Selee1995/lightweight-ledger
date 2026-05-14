.class Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;
.super Ljava/lang/Object;
.source "DocumentFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/persistence/document/DocumentFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UriFile"
.end annotation


# instance fields
.field date:J

.field id:J

.field name:Ljava/lang/String;

.field relativePath:Ljava/lang/String;

.field size:J

.field uri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
