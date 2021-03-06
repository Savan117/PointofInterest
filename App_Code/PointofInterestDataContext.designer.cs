﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="PointofInterest")]
public partial class PointofInterestDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  #endregion
	
	public PointofInterestDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["PointofInterestConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public PointofInterestDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public PointofInterestDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public PointofInterestDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public PointofInterestDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.sp_select_SpotsOpeningHoursLocationbyName")]
	public ISingleResult<sp_select_SpotsOpeningHoursLocationbyNameResult> sp_select_SpotsOpeningHoursLocationbyName([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="VarChar(60)")] string spotname)
	{
		IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), spotname);
		return ((ISingleResult<sp_select_SpotsOpeningHoursLocationbyNameResult>)(result.ReturnValue));
	}
	
	[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.sp_select_AllLocationSpots")]
	public ISingleResult<sp_select_AllLocationSpotsResult> sp_select_AllLocationSpots()
	{
		IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())));
		return ((ISingleResult<sp_select_AllLocationSpotsResult>)(result.ReturnValue));
	}
	
	[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.sp_select_SpotsOpeningHoursLocationbyNameParish")]
	public ISingleResult<sp_select_SpotsOpeningHoursLocationbyNameParishResult> sp_select_SpotsOpeningHoursLocationbyNameParish([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="VarChar(60)")] string typeofspot, [global::System.Data.Linq.Mapping.ParameterAttribute(DbType="VarChar(20)")] string parish)
	{
		IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), typeofspot, parish);
		return ((ISingleResult<sp_select_SpotsOpeningHoursLocationbyNameParishResult>)(result.ReturnValue));
	}
	
	[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.sp_select_AllUsers")]
	public ISingleResult<sp_select_AllUsersResult> sp_select_AllUsers()
	{
		IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())));
		return ((ISingleResult<sp_select_AllUsersResult>)(result.ReturnValue));
	}
	
	[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.sp_insert_User")]
	public int sp_insert_User([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="VarChar(40)")] string username, [global::System.Data.Linq.Mapping.ParameterAttribute(DbType="VarChar(30)")] string password1, [global::System.Data.Linq.Mapping.ParameterAttribute(DbType="VarChar(30)")] string fname, [global::System.Data.Linq.Mapping.ParameterAttribute(DbType="VarChar(30)")] string lname, [global::System.Data.Linq.Mapping.ParameterAttribute(DbType="VarChar(8)")] string gender, [global::System.Data.Linq.Mapping.ParameterAttribute(DbType="VarChar(60)")] string address1, [global::System.Data.Linq.Mapping.ParameterAttribute(DbType="VarChar(10)")] string telephone, [global::System.Data.Linq.Mapping.ParameterAttribute(DbType="VarChar(20)")] string roles)
	{
		IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), username, password1, fname, lname, gender, address1, telephone, roles);
		return ((int)(result.ReturnValue));
	}
}

public partial class sp_select_SpotsOpeningHoursLocationbyNameResult
{
	
	private string _name;
	
	private string _websitelink;
	
	private string _picturesdir;
	
	private System.Nullable<int> _openinghrsid;
	
	private System.Nullable<int> _location_id;
	
	private string _descriptions;
	
	private System.Nullable<int> _totalseating;
	
	private System.Nullable<int> _reservedseating;
	
	private System.Nullable<int> _availableseating;
	
	private string _approval;
	
	private string _typeofspot;
	
	private string _approval1;
	
	private string _mondayhr;
	
	private string _tuesdayhr;
	
	private string _wednesdayhr;
	
	private string _thursdayhr;
	
	private string _fridayhr;
	
	private string _saturdayhr;
	
	private string _sundayhr;
	
	private string _Lot;
	
	private string _City;
	
	private string _Street;
	
	private string _Parish;
	
	private string _latitude;
	
	private string _longitude;
	
	public sp_select_SpotsOpeningHoursLocationbyNameResult()
	{
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_name", DbType="VarChar(60)")]
	public string name
	{
		get
		{
			return this._name;
		}
		set
		{
			if ((this._name != value))
			{
				this._name = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_websitelink", DbType="VarChar(60)")]
	public string websitelink
	{
		get
		{
			return this._websitelink;
		}
		set
		{
			if ((this._websitelink != value))
			{
				this._websitelink = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_picturesdir", DbType="VarChar(60)")]
	public string picturesdir
	{
		get
		{
			return this._picturesdir;
		}
		set
		{
			if ((this._picturesdir != value))
			{
				this._picturesdir = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_openinghrsid", DbType="Int")]
	public System.Nullable<int> openinghrsid
	{
		get
		{
			return this._openinghrsid;
		}
		set
		{
			if ((this._openinghrsid != value))
			{
				this._openinghrsid = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_location_id", DbType="Int")]
	public System.Nullable<int> location_id
	{
		get
		{
			return this._location_id;
		}
		set
		{
			if ((this._location_id != value))
			{
				this._location_id = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_descriptions", DbType="VarChar(1000)")]
	public string descriptions
	{
		get
		{
			return this._descriptions;
		}
		set
		{
			if ((this._descriptions != value))
			{
				this._descriptions = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_totalseating", DbType="Int")]
	public System.Nullable<int> totalseating
	{
		get
		{
			return this._totalseating;
		}
		set
		{
			if ((this._totalseating != value))
			{
				this._totalseating = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_reservedseating", DbType="Int")]
	public System.Nullable<int> reservedseating
	{
		get
		{
			return this._reservedseating;
		}
		set
		{
			if ((this._reservedseating != value))
			{
				this._reservedseating = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_availableseating", DbType="Int")]
	public System.Nullable<int> availableseating
	{
		get
		{
			return this._availableseating;
		}
		set
		{
			if ((this._availableseating != value))
			{
				this._availableseating = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_approval", DbType="VarChar(20)")]
	public string approval
	{
		get
		{
			return this._approval;
		}
		set
		{
			if ((this._approval != value))
			{
				this._approval = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_typeofspot", DbType="VarChar(20)")]
	public string typeofspot
	{
		get
		{
			return this._typeofspot;
		}
		set
		{
			if ((this._typeofspot != value))
			{
				this._typeofspot = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_approval1", DbType="VarChar(20)")]
	public string approval1
	{
		get
		{
			return this._approval1;
		}
		set
		{
			if ((this._approval1 != value))
			{
				this._approval1 = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_mondayhr", DbType="VarChar(30)")]
	public string mondayhr
	{
		get
		{
			return this._mondayhr;
		}
		set
		{
			if ((this._mondayhr != value))
			{
				this._mondayhr = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_tuesdayhr", DbType="VarChar(30)")]
	public string tuesdayhr
	{
		get
		{
			return this._tuesdayhr;
		}
		set
		{
			if ((this._tuesdayhr != value))
			{
				this._tuesdayhr = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_wednesdayhr", DbType="VarChar(30)")]
	public string wednesdayhr
	{
		get
		{
			return this._wednesdayhr;
		}
		set
		{
			if ((this._wednesdayhr != value))
			{
				this._wednesdayhr = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_thursdayhr", DbType="VarChar(30)")]
	public string thursdayhr
	{
		get
		{
			return this._thursdayhr;
		}
		set
		{
			if ((this._thursdayhr != value))
			{
				this._thursdayhr = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_fridayhr", DbType="VarChar(30)")]
	public string fridayhr
	{
		get
		{
			return this._fridayhr;
		}
		set
		{
			if ((this._fridayhr != value))
			{
				this._fridayhr = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_saturdayhr", DbType="VarChar(30)")]
	public string saturdayhr
	{
		get
		{
			return this._saturdayhr;
		}
		set
		{
			if ((this._saturdayhr != value))
			{
				this._saturdayhr = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_sundayhr", DbType="VarChar(30)")]
	public string sundayhr
	{
		get
		{
			return this._sundayhr;
		}
		set
		{
			if ((this._sundayhr != value))
			{
				this._sundayhr = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Lot", DbType="VarChar(20)")]
	public string Lot
	{
		get
		{
			return this._Lot;
		}
		set
		{
			if ((this._Lot != value))
			{
				this._Lot = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_City", DbType="VarChar(30)")]
	public string City
	{
		get
		{
			return this._City;
		}
		set
		{
			if ((this._City != value))
			{
				this._City = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Street", DbType="VarChar(30)")]
	public string Street
	{
		get
		{
			return this._Street;
		}
		set
		{
			if ((this._Street != value))
			{
				this._Street = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Parish", DbType="VarChar(20)")]
	public string Parish
	{
		get
		{
			return this._Parish;
		}
		set
		{
			if ((this._Parish != value))
			{
				this._Parish = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_latitude", DbType="VarChar(20)")]
	public string latitude
	{
		get
		{
			return this._latitude;
		}
		set
		{
			if ((this._latitude != value))
			{
				this._latitude = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_longitude", DbType="VarChar(20)")]
	public string longitude
	{
		get
		{
			return this._longitude;
		}
		set
		{
			if ((this._longitude != value))
			{
				this._longitude = value;
			}
		}
	}
}

public partial class sp_select_AllLocationSpotsResult
{
	
	private string _name;
	
	private string _websitelink;
	
	private string _picturesdir;
	
	private System.Nullable<int> _openinghrsid;
	
	private System.Nullable<int> _location_id;
	
	private string _descriptions;
	
	private System.Nullable<int> _totalseating;
	
	private System.Nullable<int> _reservedseating;
	
	private System.Nullable<int> _availableseating;
	
	private string _approval;
	
	private string _typeofspot;
	
	private string _approval1;
	
	private string _Lot;
	
	private string _City;
	
	private string _Street;
	
	private string _Parish;
	
	private string _latitude;
	
	private string _longitude;
	
	public sp_select_AllLocationSpotsResult()
	{
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_name", DbType="VarChar(60)")]
	public string name
	{
		get
		{
			return this._name;
		}
		set
		{
			if ((this._name != value))
			{
				this._name = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_websitelink", DbType="VarChar(60)")]
	public string websitelink
	{
		get
		{
			return this._websitelink;
		}
		set
		{
			if ((this._websitelink != value))
			{
				this._websitelink = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_picturesdir", DbType="VarChar(60)")]
	public string picturesdir
	{
		get
		{
			return this._picturesdir;
		}
		set
		{
			if ((this._picturesdir != value))
			{
				this._picturesdir = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_openinghrsid", DbType="Int")]
	public System.Nullable<int> openinghrsid
	{
		get
		{
			return this._openinghrsid;
		}
		set
		{
			if ((this._openinghrsid != value))
			{
				this._openinghrsid = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_location_id", DbType="Int")]
	public System.Nullable<int> location_id
	{
		get
		{
			return this._location_id;
		}
		set
		{
			if ((this._location_id != value))
			{
				this._location_id = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_descriptions", DbType="VarChar(1000)")]
	public string descriptions
	{
		get
		{
			return this._descriptions;
		}
		set
		{
			if ((this._descriptions != value))
			{
				this._descriptions = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_totalseating", DbType="Int")]
	public System.Nullable<int> totalseating
	{
		get
		{
			return this._totalseating;
		}
		set
		{
			if ((this._totalseating != value))
			{
				this._totalseating = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_reservedseating", DbType="Int")]
	public System.Nullable<int> reservedseating
	{
		get
		{
			return this._reservedseating;
		}
		set
		{
			if ((this._reservedseating != value))
			{
				this._reservedseating = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_availableseating", DbType="Int")]
	public System.Nullable<int> availableseating
	{
		get
		{
			return this._availableseating;
		}
		set
		{
			if ((this._availableseating != value))
			{
				this._availableseating = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_approval", DbType="VarChar(20)")]
	public string approval
	{
		get
		{
			return this._approval;
		}
		set
		{
			if ((this._approval != value))
			{
				this._approval = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_typeofspot", DbType="VarChar(20)")]
	public string typeofspot
	{
		get
		{
			return this._typeofspot;
		}
		set
		{
			if ((this._typeofspot != value))
			{
				this._typeofspot = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_approval1", DbType="VarChar(20)")]
	public string approval1
	{
		get
		{
			return this._approval1;
		}
		set
		{
			if ((this._approval1 != value))
			{
				this._approval1 = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Lot", DbType="VarChar(20)")]
	public string Lot
	{
		get
		{
			return this._Lot;
		}
		set
		{
			if ((this._Lot != value))
			{
				this._Lot = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_City", DbType="VarChar(30)")]
	public string City
	{
		get
		{
			return this._City;
		}
		set
		{
			if ((this._City != value))
			{
				this._City = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Street", DbType="VarChar(30)")]
	public string Street
	{
		get
		{
			return this._Street;
		}
		set
		{
			if ((this._Street != value))
			{
				this._Street = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Parish", DbType="VarChar(20)")]
	public string Parish
	{
		get
		{
			return this._Parish;
		}
		set
		{
			if ((this._Parish != value))
			{
				this._Parish = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_latitude", DbType="VarChar(20)")]
	public string latitude
	{
		get
		{
			return this._latitude;
		}
		set
		{
			if ((this._latitude != value))
			{
				this._latitude = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_longitude", DbType="VarChar(20)")]
	public string longitude
	{
		get
		{
			return this._longitude;
		}
		set
		{
			if ((this._longitude != value))
			{
				this._longitude = value;
			}
		}
	}
}

public partial class sp_select_SpotsOpeningHoursLocationbyNameParishResult
{
	
	private string _name;
	
	private string _websitelink;
	
	private string _picturesdir;
	
	private System.Nullable<int> _openinghrsid;
	
	private System.Nullable<int> _location_id;
	
	private string _descriptions;
	
	private System.Nullable<int> _totalseating;
	
	private System.Nullable<int> _reservedseating;
	
	private System.Nullable<int> _availableseating;
	
	private string _approval;
	
	private string _typeofspot;
	
	private string _approval1;
	
	private string _mondayhr;
	
	private string _tuesdayhr;
	
	private string _wednesdayhr;
	
	private string _thursdayhr;
	
	private string _fridayhr;
	
	private string _saturdayhr;
	
	private string _sundayhr;
	
	private string _Lot;
	
	private string _City;
	
	private string _Street;
	
	private string _Parish;
	
	private string _latitude;
	
	private string _longitude;
	
	public sp_select_SpotsOpeningHoursLocationbyNameParishResult()
	{
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_name", DbType="VarChar(60)")]
	public string name
	{
		get
		{
			return this._name;
		}
		set
		{
			if ((this._name != value))
			{
				this._name = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_websitelink", DbType="VarChar(60)")]
	public string websitelink
	{
		get
		{
			return this._websitelink;
		}
		set
		{
			if ((this._websitelink != value))
			{
				this._websitelink = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_picturesdir", DbType="VarChar(60)")]
	public string picturesdir
	{
		get
		{
			return this._picturesdir;
		}
		set
		{
			if ((this._picturesdir != value))
			{
				this._picturesdir = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_openinghrsid", DbType="Int")]
	public System.Nullable<int> openinghrsid
	{
		get
		{
			return this._openinghrsid;
		}
		set
		{
			if ((this._openinghrsid != value))
			{
				this._openinghrsid = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_location_id", DbType="Int")]
	public System.Nullable<int> location_id
	{
		get
		{
			return this._location_id;
		}
		set
		{
			if ((this._location_id != value))
			{
				this._location_id = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_descriptions", DbType="VarChar(1000)")]
	public string descriptions
	{
		get
		{
			return this._descriptions;
		}
		set
		{
			if ((this._descriptions != value))
			{
				this._descriptions = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_totalseating", DbType="Int")]
	public System.Nullable<int> totalseating
	{
		get
		{
			return this._totalseating;
		}
		set
		{
			if ((this._totalseating != value))
			{
				this._totalseating = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_reservedseating", DbType="Int")]
	public System.Nullable<int> reservedseating
	{
		get
		{
			return this._reservedseating;
		}
		set
		{
			if ((this._reservedseating != value))
			{
				this._reservedseating = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_availableseating", DbType="Int")]
	public System.Nullable<int> availableseating
	{
		get
		{
			return this._availableseating;
		}
		set
		{
			if ((this._availableseating != value))
			{
				this._availableseating = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_approval", DbType="VarChar(20)")]
	public string approval
	{
		get
		{
			return this._approval;
		}
		set
		{
			if ((this._approval != value))
			{
				this._approval = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_typeofspot", DbType="VarChar(20)")]
	public string typeofspot
	{
		get
		{
			return this._typeofspot;
		}
		set
		{
			if ((this._typeofspot != value))
			{
				this._typeofspot = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_approval1", DbType="VarChar(20)")]
	public string approval1
	{
		get
		{
			return this._approval1;
		}
		set
		{
			if ((this._approval1 != value))
			{
				this._approval1 = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_mondayhr", DbType="VarChar(30)")]
	public string mondayhr
	{
		get
		{
			return this._mondayhr;
		}
		set
		{
			if ((this._mondayhr != value))
			{
				this._mondayhr = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_tuesdayhr", DbType="VarChar(30)")]
	public string tuesdayhr
	{
		get
		{
			return this._tuesdayhr;
		}
		set
		{
			if ((this._tuesdayhr != value))
			{
				this._tuesdayhr = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_wednesdayhr", DbType="VarChar(30)")]
	public string wednesdayhr
	{
		get
		{
			return this._wednesdayhr;
		}
		set
		{
			if ((this._wednesdayhr != value))
			{
				this._wednesdayhr = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_thursdayhr", DbType="VarChar(30)")]
	public string thursdayhr
	{
		get
		{
			return this._thursdayhr;
		}
		set
		{
			if ((this._thursdayhr != value))
			{
				this._thursdayhr = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_fridayhr", DbType="VarChar(30)")]
	public string fridayhr
	{
		get
		{
			return this._fridayhr;
		}
		set
		{
			if ((this._fridayhr != value))
			{
				this._fridayhr = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_saturdayhr", DbType="VarChar(30)")]
	public string saturdayhr
	{
		get
		{
			return this._saturdayhr;
		}
		set
		{
			if ((this._saturdayhr != value))
			{
				this._saturdayhr = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_sundayhr", DbType="VarChar(30)")]
	public string sundayhr
	{
		get
		{
			return this._sundayhr;
		}
		set
		{
			if ((this._sundayhr != value))
			{
				this._sundayhr = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Lot", DbType="VarChar(20)")]
	public string Lot
	{
		get
		{
			return this._Lot;
		}
		set
		{
			if ((this._Lot != value))
			{
				this._Lot = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_City", DbType="VarChar(30)")]
	public string City
	{
		get
		{
			return this._City;
		}
		set
		{
			if ((this._City != value))
			{
				this._City = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Street", DbType="VarChar(30)")]
	public string Street
	{
		get
		{
			return this._Street;
		}
		set
		{
			if ((this._Street != value))
			{
				this._Street = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Parish", DbType="VarChar(20)")]
	public string Parish
	{
		get
		{
			return this._Parish;
		}
		set
		{
			if ((this._Parish != value))
			{
				this._Parish = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_latitude", DbType="VarChar(20)")]
	public string latitude
	{
		get
		{
			return this._latitude;
		}
		set
		{
			if ((this._latitude != value))
			{
				this._latitude = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_longitude", DbType="VarChar(20)")]
	public string longitude
	{
		get
		{
			return this._longitude;
		}
		set
		{
			if ((this._longitude != value))
			{
				this._longitude = value;
			}
		}
	}
}

public partial class sp_select_AllUsersResult
{
	
	private string _username;
	
	private string _password1;
	
	private string _fname;
	
	private string _lname;
	
	private string _gender;
	
	private string _address1;
	
	private string _telephone;
	
	private string _roles;
	
	public sp_select_AllUsersResult()
	{
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_username", DbType="VarChar(40) NOT NULL", CanBeNull=false)]
	public string username
	{
		get
		{
			return this._username;
		}
		set
		{
			if ((this._username != value))
			{
				this._username = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_password1", DbType="VarChar(30)")]
	public string password1
	{
		get
		{
			return this._password1;
		}
		set
		{
			if ((this._password1 != value))
			{
				this._password1 = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_fname", DbType="VarChar(30)")]
	public string fname
	{
		get
		{
			return this._fname;
		}
		set
		{
			if ((this._fname != value))
			{
				this._fname = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_lname", DbType="VarChar(30)")]
	public string lname
	{
		get
		{
			return this._lname;
		}
		set
		{
			if ((this._lname != value))
			{
				this._lname = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_gender", DbType="VarChar(8)")]
	public string gender
	{
		get
		{
			return this._gender;
		}
		set
		{
			if ((this._gender != value))
			{
				this._gender = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_address1", DbType="VarChar(60)")]
	public string address1
	{
		get
		{
			return this._address1;
		}
		set
		{
			if ((this._address1 != value))
			{
				this._address1 = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_telephone", DbType="VarChar(10)")]
	public string telephone
	{
		get
		{
			return this._telephone;
		}
		set
		{
			if ((this._telephone != value))
			{
				this._telephone = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_roles", DbType="VarChar(20)")]
	public string roles
	{
		get
		{
			return this._roles;
		}
		set
		{
			if ((this._roles != value))
			{
				this._roles = value;
			}
		}
	}
}
#pragma warning restore 1591
